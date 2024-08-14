import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/infrastructure/location/location_repository.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(const _Initial()) {
    on<LocationEvent>((event, emit) {
      event.map(
        started: (value) {
          final LocationRepository _locationRepository =
              LocationRepository(value.orderId);
          _locationRepository.locationStream.listen(
            (data) {
              LocationEvent.locationChanged(location: data);
            },
          );
        },
        locationChanged: (value) {
          emit(
            LocationState.updatedLocation(location: value.location),
          );
        },
      );
    });
  }
}
