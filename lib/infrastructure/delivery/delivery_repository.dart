import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/delivery/delivery.dart';
import 'package:shopping_app/domain/delivery/delivery_failure.dart';
import 'package:shopping_app/domain/delivery/i_delivery.dart';
import 'package:shopping_app/infrastructure/delivery/delivery_dtos.dart';

@LazySingleton(as: IDeliveryRepository)
class DeliveryRepository implements IDeliveryRepository {
  final Dio dio = GetIt.instance<Dio>();
  @override
  Future<Either<DeliveryFailure, Unit>> requestDelivery({
    required String orderId,
  }) async {
    try {
      await dio.post('/delivery', data: {
        "orderId": orderId,
      });
      return right(unit);
    } on DioException catch (e) {
      log('Error create product: $e');
      return left(const DeliveryFailure.unKnownError());
    } catch (e) {
      log('Error create product: $e');
      return left(const DeliveryFailure.unKnownError());
    }
  }

  @override
  Future<Either<DeliveryFailure, List<Delivery>>> initiatedDeliveries() async {
    try {
      final Response response = await dio.get('/delivery/initiated');
      final List<Delivery> delivery =
          (response.data['data']['deliveries'] as List<dynamic>)
              .map((el) => DeliveryDto.fromJson(el).toDomain())
              .toList();
      return right(delivery);
    } on DioException catch (e) {
      log('Error getting initiated product: $e');
      return left(const DeliveryFailure.unKnownError());
    } catch (e) {
      log('Error getting initiated product: $e');
      return left(const DeliveryFailure.unKnownError());
    }
  }

  @override
  Future<Either<DeliveryFailure, Unit>> fulfilleDelivery({
    required String deliveryId,
  }) async {
    try {
      final Response response =
          await dio.patch('/delivery/$deliveryId/fulfilDelivery');

      return right(unit);
    } on DioException catch (e) {
      log('Error fulfilling the delivery: $e');
      return left(const DeliveryFailure.unKnownError());
    } catch (e) {
      log('Error fulfilling the delivery: $e');
      return left(const DeliveryFailure.unKnownError());
    }
  }

  @override
  Future<Either<DeliveryFailure, List<Delivery>>> getActiveDeliveries() async {
    try {
      final Response response = await dio.get('/delivery/myActiveDeliveries');
      final List<Delivery> deliveries = ([response.data['data']['delivery']])
          .map((el) => DeliveryDto.fromJson(el).toDomain())
          .toList();

      return right(deliveries);
    } on DioException catch (e) {
      log('Error getting active delivery: $e');
      return left(const DeliveryFailure.unKnownError());
    } catch (e) {
      log('Error getting active delivery: $e');
      return left(const DeliveryFailure.unKnownError());
    }
  }

  @override
  Future<Either<DeliveryFailure, List<Delivery>>>
      getInactiveDeliveries() async {
    try {
      final Response response = await dio.get('/delivery/myDeliveries');
      final List<Delivery> deliveries =
          (response.data['data']['deliveries'] as List<dynamic>)
              .map((el) => DeliveryDto.fromJson(el).toDomain())
              .toList();

      return right(deliveries);
    } on DioException catch (e) {
      log('Error getting inactive delivery: $e');
      return left(const DeliveryFailure.unKnownError());
    } catch (e) {
      log('Error getting inactive delivery: $e');
      return left(const DeliveryFailure.unKnownError());
    }
  }

  @override
  Future<Either<DeliveryFailure, Delivery>> requestDeliveryJob({
    required String orderId,
  }) async {
    try {
      final Response response = await dio.post('/delivery/$orderId/requestJob');
      final Delivery delivery =
          DeliveryDto.fromJson(response.data['data']['delivery']).toDomain();

      return right(delivery);
    } on DioException catch (e) {
      log('Error requesting delivery job: $e');
      return left(const DeliveryFailure.unKnownError());
    } catch (e) {
      log('Error requesting delivery job: $e');
      return left(const DeliveryFailure.unKnownError());
    }
  }

  @override
  Future<Either<DeliveryFailure, Delivery>> updateDeliveryStatus({
    required String deliveryId,
    required String status,
  }) async {
    try {
      final Response response = await dio.patch(
        '/delivery/$deliveryId/updateStatus',
        data: {"status": status},
      );
      final Delivery delivery =
          DeliveryDto.fromJson(response.data['data']['delivery']).toDomain();

      return right(delivery);
    } on DioException catch (e) {
      log('Error updating delivery: $e');
      return left(const DeliveryFailure.unKnownError());
    } catch (e) {
      log('Error updating delivery: $e');
      return left(const DeliveryFailure.unKnownError());
    }
  }
}
