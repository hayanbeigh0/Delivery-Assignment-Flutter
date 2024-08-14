part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;
  const factory LocationState.updatedLocation({
    required Location location,
  }) = _UpdatedLocation;
}
