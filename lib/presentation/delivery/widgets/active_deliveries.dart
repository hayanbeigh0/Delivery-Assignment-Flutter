import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shopping_app/application/delivery/deliveries_cubit/deliveries_cubit.dart';
import 'package:shopping_app/application/delivery/delivery_cubit/delivery_cubit.dart';
import 'package:shopping_app/application/location/location_bloc/location_bloc.dart';
import 'package:shopping_app/injection.dart';
import 'package:shopping_app/presentation/core/utils/current_location.dart';
import 'package:shopping_app/presentation/core/utils/distance_calculator.dart';
import 'package:shopping_app/presentation/core/utils/get_image_from_bytes.dart';
import 'package:shopping_app/presentation/core/widgets/app_scaffold.dart';
import 'package:shopping_app/presentation/core/widgets/buttons/primary_elevated_button.dart';
import 'package:shopping_app/presentation/core/widgets/progress_indicator.dart';

class ActiveDeliveries extends StatefulWidget {
  const ActiveDeliveries({super.key});

  @override
  State<ActiveDeliveries> createState() => _ActiveDeliveriesState();
}

class _ActiveDeliveriesState extends State<ActiveDeliveries> {
  GoogleMapController? _mapController;
  LatLng? _currentPosition;
  Set<Marker> markers = {};
  Set<Polyline> polylines = {};

  void _getCurrentLocation() async {
    _currentPosition = await determinePosition().then(
      (position) => LatLng(
        position.latitude,
        position.longitude,
      ),
    );
    setState(() {
      _currentPosition;
      if (_mapController != null) {
        _zoomToMyLocation();
      }
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _zoomToMyLocation();
  }

  void _zoomToMyLocation() async {
    if (_mapController == null) return;
    _mapController!.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: _currentPosition!,
          zoom: 15,
        ),
      ),
    );
  }

  BitmapDescriptor? buyerCustomMarkerIcon;
  BitmapDescriptor? sellerCustomMarkerIcon;
  Future<void> _setCustomMarkerIcon() async {
    final Uint8List buyerMarkerIcon =
        await getBytesFromAsset('assets/images/house.png', 40);
    buyerCustomMarkerIcon = BitmapDescriptor.bytes(buyerMarkerIcon);
    final Uint8List sellerMarkerIcon =
        await getBytesFromAsset('assets/images/warehouse.png', 40);
    sellerCustomMarkerIcon = BitmapDescriptor.bytes(sellerMarkerIcon);
    setState(() {});
  }

  @override
  void initState() {
    _setCustomMarkerIcon();
    _getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: 'Active Delivery',
      body: RefreshIndicator(
        onRefresh: () =>
            BlocProvider.of<DeliveriesCubit>(context).getDeliveries(
          activeDeliveries: true,
        ),
        child: BlocListener<DeliveryCubit, DeliveryState>(
          listener: (context, deliveryState) {
            deliveryState.maybeMap(
              orElse: () {},
              loading: (value) {
                showProgressIndicator(context);
              },
              success: (value) {
                BlocProvider.of<DeliveriesCubit>(context).getDeliveries(
                  activeDeliveries: true,
                );
                context.router.popForced();
              },
              failed: (value) {
                context.router.popForced();
              },
            );
          },
          child: BlocListener<LocationBloc, LocationState>(
            listener: (context, locationState) {
              // TODO: implement listener
              locationState.maybeMap(
                orElse: () {},
                updatedLocation: (value) {
                  log('Updated location: ${value.location.coordinates}');
                },
              );
            },
            child: BlocConsumer<DeliveriesCubit, DeliveriesState>(
              listener: (context, deliveriesState) {
                deliveriesState.when(
                  failed: (failure) {
                    log('delivery loaded');
                  },
                  initial: () {
                    log('delivery loaded');
                  },
                  loading: () {
                    log('delivery loaded');
                  },
                  success: (value) {
                    log('delivery loaded');
                    BlocProvider.of<LocationBloc>(context)
                        .add(LocationEvent.started(
                      orderId: value.first.order.id!,
                    ));
                    log('listening');
                    final buyerLocation = LatLng(
                      value.first.order.buyerAddress!.coordinates.latitude!,
                      value.first.order.buyerAddress!.coordinates.longitude!,
                    );
                    final sellerLocation = LatLng(
                      value.first.order.sellerAddress!.coordinates.latitude!,
                      value.first.order.sellerAddress!.coordinates.longitude!,
                    );
                    fetchAndDrawPolyline(buyerLocation, sellerLocation);
                  },
                );
              },
              builder: (context, deliveriesStateBuilder) {
                return deliveriesStateBuilder.maybeMap(
                  orElse: () => const Center(
                    child: Text('Something went wrong!'),
                  ),
                  success: (value) {
                    final buyerLocation = LatLng(
                      value.deliveries.first.order.buyerAddress!.coordinates
                          .latitude!,
                      value.deliveries.first.order.buyerAddress!.coordinates
                          .longitude!,
                    );
                    final sellerLocation = LatLng(
                      value.deliveries.first.order.sellerAddress!.coordinates
                          .latitude!,
                      value.deliveries.first.order.sellerAddress!.coordinates
                          .longitude!,
                    );
                    markers.add(
                      Marker(
                        markerId: const MarkerId('Buyer'),
                        position: LatLng(
                          buyerLocation.latitude,
                          buyerLocation.longitude,
                        ),
                        infoWindow: const InfoWindow(
                          title: 'Buyer',
                          snippet: 'This is the Buyer location',
                        ),
                        icon: buyerCustomMarkerIcon ??
                            BitmapDescriptor.defaultMarker,
                      ),
                    );
                    markers.add(
                      Marker(
                        markerId: const MarkerId('Seller'),
                        position: LatLng(
                          sellerLocation.latitude,
                          sellerLocation.longitude,
                        ),
                        infoWindow: const InfoWindow(
                          title: 'Seller',
                          snippet: 'This is the Seller location',
                        ),
                        icon: sellerCustomMarkerIcon ??
                            BitmapDescriptor.defaultMarker,
                      ),
                    );
                    final distance =
                        calculateTotalDistanceInMetersOrKilometers([
                      LatLng(
                        value
                            .deliveries.first.dropAddress.coordinates.latitude!,
                        value.deliveries.first.dropAddress.coordinates
                            .longitude!,
                      ),
                      LatLng(
                        value.deliveries.first.pickupAddress.coordinates
                            .latitude!,
                        value.deliveries.first.pickupAddress.coordinates
                            .longitude!,
                      ),
                      LatLng(
                        value.deliveries.first.order.buyerAddress!.coordinates
                            .latitude!,
                        value.deliveries.first.order.buyerAddress!.coordinates
                            .longitude!,
                      ),
                    ]);
                    return Container(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pickup address: ${value.deliveries.first.pickupAddress.address}',
                          ),
                          Text(
                            'Drop address: ${value.deliveries.first.dropAddress.address}',
                          ),
                          Text(
                            'Total distance to cover: $distance',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          if (_currentPosition != null)
                            Expanded(
                              child: GoogleMap(
                                initialCameraPosition: const CameraPosition(
                                  target: LatLng(0, 0), // Initial position
                                  zoom: 10,
                                ),
                                onMapCreated: _onMapCreated,
                                compassEnabled: true,
                                myLocationEnabled: true,
                                markers: markers,
                                polylines: polylines,
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocBuilder<DeliveriesCubit, DeliveriesState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => const SizedBox(),
                success: (value) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        if (value.deliveries.first.deliveryStatus != 'PICKEDUP')
                          Expanded(
                            child: Row(
                              children: [
                                AppElevatedButton(
                                  onPressed: () {
                                    BlocProvider.of<DeliveryCubit>(context)
                                        .updateDeliveryStatus(
                                      id: value.deliveries.first.id,
                                      status: 'PICKEDUP',
                                    );
                                  },
                                  child: const Text('Complete Pickup'),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        Expanded(
                          child: AppElevatedButton(
                            onPressed: () {
                              BlocProvider.of<DeliveryCubit>(context)
                                  .fulfillDelivery(
                                deliveryId: value.deliveries.first.id,
                              );
                            },
                            child: const Text('Complete Drop'),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Future<void> fetchAndDrawPolyline(LatLng origin, LatLng destination) async {
    final Dio dio = GetIt.instance<Dio>();
    final response = await dio.get(
      'https://maps.googleapis.com/maps/api/directions/json?origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}&key=AIzaSyBfTtBL_E5N99agMNeMcZCW1Fa9NGFIKzY',
    );

    final data = response.data;
    log(data['status']);

    if (data['status'] == 'OK') {
      final List<LatLng> points = [];
      for (dynamic step in data['routes'][0]['legs'][0]['steps']) {
        final startLocation = step['start_location'];
        final endLocation = step['end_location'];
        points.add(LatLng(startLocation['lat'], startLocation['lng']));
        points.add(LatLng(endLocation['lat'], endLocation['lng']));
      }

      setState(() {
        polylines.add(Polyline(
          polylineId: const PolylineId('route'),
          color: Colors.blue,
          width: 5,
          points: points,
        ));
      });
    }
  }
}
