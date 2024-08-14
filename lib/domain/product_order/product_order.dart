import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/domain/user/user.dart';

part 'product_order.freezed.dart';

@freezed
class ProductOrder with _$ProductOrder {
  const factory ProductOrder({
    required Address buyerAddress,
    required Address sellerAddress,
    required String id,
    required Product product,
    required String seller,
    required User buyer,
    required double price,
    required String status,
    required List<TransitLog> transitLogs,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ProductOrder;
}

@freezed
class Address with _$Address {
  const factory Address({
    required String? address,
    required String type,
    required LocationCoordinates coordinates,
  }) = _Address;
}

@freezed
class LocationCoordinates with _$LocationCoordinates {
  const factory LocationCoordinates({
    required double? latitude,
    required double? longitude,
  }) = _LocationCoordinates;
}

@freezed
class TransitLog with _$TransitLog {
  const factory TransitLog({
    required String message,
    required String id,
    required DateTime time,
  }) = _TransitLog;
}
