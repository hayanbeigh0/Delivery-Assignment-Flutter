import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/product_order/i_product_order.dart';
import 'package:shopping_app/domain/product_order/product_order.dart';
import 'package:shopping_app/domain/product_order/product_order_failure.dart';
import 'package:shopping_app/infrastructure/product_order/product_order_dtos.dart';

@LazySingleton(as: IProductOrderRepository)
class ProductOrderRepository implements IProductOrderRepository {
  final Dio dio = GetIt.instance<Dio>();
  @override
  Future<Either<ProductOrderFailure, ProductOrder>> createOrder({
    required String productId,
    required Address address,
  }) async {
    try {
      final Response response = await dio.post('/orders', data: {
        "productId": productId,
        "location": {
          "address": address.address,
          "type": 'Point',
          "coordinates": [
            address.coordinates.latitude,
            address.coordinates.longitude
          ]
        }
      });
      final ProductOrder product =
          ProductOrderDto.fromJson(response.data['data']['order']).toDomain();
      return right(product);
    } on DioException catch (e) {
      log('Error create product: $e');
      return left(const ProductOrderFailure.unKnownError());
    } catch (e) {
      log('Error create product: $e');
      return left(const ProductOrderFailure.unKnownError());
    }
  }

  @override
  Future<Either<ProductOrderFailure, List<ProductOrder>>> getMyOrders() async {
    try {
      final Response response = await dio.get('/orders/myOrders');
      final List<ProductOrder> productOrders =
          (response.data['data']['orders'] as List<dynamic>)
              .map((el) => ProductOrderDto.fromJson(el).toDomain())
              .toList();
      return right(productOrders);
    } on DioException catch (e) {
      log('Error get my orders: $e');
      return left(const ProductOrderFailure.unKnownError());
    } catch (e) {
      log('Error get my orders: $e');
      return left(const ProductOrderFailure.unKnownError());
    }
  }

  @override
  Future<Either<ProductOrderFailure, List<ProductOrder>>>
      getSellerOrders() async {
    try {
      final Response response = await dio.get('/orders/myOrderRequests');
      final List<ProductOrder> productOrders =
          (response.data['data']['orders'] as List<dynamic>)
              .map((el) => ProductOrderDto.fromJson(el).toDomain())
              .toList();
      return right(productOrders);
    } on DioException catch (e) {
      log('Error get my orders: $e');
      return left(const ProductOrderFailure.unKnownError());
    } catch (e) {
      log('Error get my orders: $e');
      return left(const ProductOrderFailure.unKnownError());
    }
  }

  @override
  Future<Either<ProductOrderFailure, ProductOrder>> updateOrderStatus({
    required String orderId,
    required String status,
  }) async {
    try {
      final Response response = await dio.patch(
        '/orders/$orderId/updateOrderStatus',
        data: {
          "status": status.toUpperCase(),
        },
      );
      final ProductOrder productOrder =
          ProductOrderDto.fromJson(response.data['data']['order']).toDomain();
      return right(productOrder);
    } on DioException catch (e) {
      log('Error update orders status: $e');
      return left(const ProductOrderFailure.unKnownError());
    } catch (e) {
      log('Error update orders status: $e');
      return left(const ProductOrderFailure.unKnownError());
    }
  }
}
