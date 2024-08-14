import 'package:shopping_app/domain/products/product.dart';

abstract class ILocationRepository {
  void handleLocationUpdate(dynamic data) {}
  Stream<Location> get locationStream;
}
