import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/domain/product_order/product_order.dart';
import 'package:shopping_app/domain/user/user.dart';

part 'delivery.freezed.dart';

@freezed
class Delivery with _$Delivery {
  const factory Delivery({
    required String id,
    required Order order,
    required Address pickupAddress,
    required Address dropAddress,
    required String deliveryStatus,
    required String deliveryCode,
    required bool active,
    required String? fulfilmentPartner,
  }) = _Delivery;
}

@freezed
class Order with _$Order {
  const factory Order({
    String? id,
    Address? buyerAddress,
    Address? sellerAddress,
    String? product,
    User? seller,
    User? buyer,
    int? price,
    String? status,
    List<TransitLog>? transitLogs,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Order;
}
