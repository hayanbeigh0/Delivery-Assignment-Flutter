
import 'package:shopping_app/domain/location/i_location.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'dart:async';

class LocationRepository implements ILocationRepository {
  final String orderId;
  late IO.Socket _socket;
  final _locationController = StreamController<Location>();

  LocationRepository(this.orderId) {
    _socket = IO.io(
        'http://192.168.1.8:8000/',
        IO.OptionBuilder()
            .setQuery({"orderId": orderId})
            .setTransports(['websocket'])
            .enableAutoConnect()
            .setReconnectionDelay(2000)
            .build());

    _socket.onConnect((_) {
      print('Connected to Socket.IO');
    });

    _socket.onDisconnect((_) {
      print('Disconnected from Socket.IO');
    });

    _socket.on('location_update', (data) {
      handleLocationUpdate(data);
    });
  }

  @override
  void handleLocationUpdate(dynamic data) {
    final location = Location(
      type: 'Point',
      coordinates: [
        data['latitude'],
        data['longitude'],
      ],
    );

    _locationController.add(location);
  }

  // Stream that emits location updates
  @override
  Stream<Location> get locationStream => _locationController.stream;

  void dispose() {
    _locationController.close();
    _socket.disconnect();
  }
}
