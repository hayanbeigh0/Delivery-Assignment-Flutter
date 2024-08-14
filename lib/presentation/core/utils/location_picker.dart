import 'dart:developer';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_place_picker_mb/google_maps_place_picker.dart';
import 'package:shopping_app/presentation/core/utils/current_location.dart';
import 'package:shopping_app/presentation/core/widgets/progress_indicator.dart';

class PickupPointSheet extends StatelessWidget {
  final LatLng currentLocation;
  const PickupPointSheet({
    super.key,
    required this.currentLocation,
    required this.onPlacePicked,
  });
  final void Function(PickResult) onPlacePicked;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: PlacePicker(
        apiKey: Platform.isAndroid
            ? "AIzaSyCPX-1fUT1iPwWKjZAIjLFFcpBYNMO4SX0"
            : "AIzaSyCfvZyO8ByqrEv9LFONctX2fS04ObjTGZE",
        onPlacePicked: onPlacePicked,
        initialPosition: currentLocation,
        useCurrentLocation: true,
        enableMyLocationButton: true,
        selectText: 'Select',
        onTapBack: () => context.router.popForced(),
      ),
    );
  }
}

Future<void> showPickupLocationSheet({
  required BuildContext context,
  required void Function(PickResult) onPlacePicked,
}) async {
  try {
    showProgressIndicator(context);
    await determinePosition()
        .then((position) => LatLng(
              position.latitude,
              position.longitude,
            ))
        .then((latLng) async {
      context.router.popForced();
      return await showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) {
          return Center(
            child: PickupPointSheet(
              currentLocation: latLng,
              onPlacePicked: onPlacePicked,
            ),
          );
        },
      );
    });
  } catch (e) {
    log(e.toString());
  }
}
