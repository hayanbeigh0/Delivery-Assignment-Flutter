import 'package:dartz/dartz.dart';
import 'package:shopping_app/domain/delivery/delivery.dart';
import 'package:shopping_app/domain/delivery/delivery_failure.dart';

abstract class IDeliveryRepository {
  Future<Either<DeliveryFailure, Unit>> requestDelivery({
    required String orderId,
  });
  Future<Either<DeliveryFailure, List<Delivery>>> initiatedDeliveries();
  Future<Either<DeliveryFailure, Delivery>> requestDeliveryJob({
    required String orderId,
  });
  Future<Either<DeliveryFailure, Delivery>> updateDeliveryStatus({
    required String deliveryId,
    required String status,
  });
  Future<Either<DeliveryFailure, List<Delivery>>> getInactiveDeliveries();
  Future<Either<DeliveryFailure, List<Delivery>>> getActiveDeliveries();
  Future<Either<DeliveryFailure, Unit>> fulfilleDelivery({
    required String deliveryId,
  });
}
