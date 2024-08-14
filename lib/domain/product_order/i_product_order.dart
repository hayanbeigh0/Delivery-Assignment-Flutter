import 'package:dartz/dartz.dart' hide Order;
import 'package:shopping_app/domain/product_order/product_order.dart';
import 'package:shopping_app/domain/product_order/product_order_failure.dart';

abstract class IProductOrderRepository {
  Future<Either<ProductOrderFailure, ProductOrder>> createOrder({
    required String productId,
    required Address address,
  });
  Future<Either<ProductOrderFailure, List<ProductOrder>>> getMyOrders();
  Future<Either<ProductOrderFailure, List<ProductOrder>>> getSellerOrders();
  Future<Either<ProductOrderFailure, ProductOrder>> updateOrderStatus({
    required String orderId,
    required String status,
  });
}
