import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

int calculateTotalDistanceInMeters(List<LatLng> coordinates) {
  if (coordinates.isEmpty) return 0;

  double totalDistance = 0.0;

  for (int i = 0; i < coordinates.length - 1; i++) {
    totalDistance += Geolocator.distanceBetween(
      coordinates[i].latitude,
      coordinates[i].longitude,
      coordinates[i + 1].latitude,
      coordinates[i + 1].longitude,
    );
  }

  return totalDistance.round(); // Round to the nearest integer
}

String calculateTotalDistanceInMetersOrKilometers(List<LatLng> coordinates) {
  if (coordinates.isEmpty) return '0 m';

  double totalDistance = 0.0;

  for (int i = 0; i < coordinates.length - 1; i++) {
    totalDistance += Geolocator.distanceBetween(
      coordinates[i].latitude,
      coordinates[i].longitude,
      coordinates[i + 1].latitude,
      coordinates[i + 1].longitude,
    );
  }

  if (totalDistance < 1000) {
    return '${totalDistance.round()} m';
  } else {
    return '${(totalDistance / 1000).toStringAsFixed(2)} km';
  }
}
