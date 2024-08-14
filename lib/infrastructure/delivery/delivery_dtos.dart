import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/domain/delivery/delivery.dart';
import 'package:shopping_app/domain/product_order/product_order.dart';
import 'package:shopping_app/domain/user/user.dart';
import 'package:shopping_app/infrastructure/product_order/product_order_dtos.dart';
import 'package:shopping_app/infrastructure/user/user_dtos.dart';

part 'delivery_dtos.freezed.dart';
part 'delivery_dtos.g.dart';

@freezed
class DeliveryDto with _$DeliveryDto {
  const DeliveryDto._(); // Private empty constructor

  const factory DeliveryDto({
    @JsonKey(name: '_id') required String id,
    @JsonKey(fromJson: orderFromJson) required OrderDto order,
    @JsonKey(name: 'pickupAddress') required AddressDto pickupAddress,
    @JsonKey(name: 'dropAddress') required AddressDto dropAddress,
    required String deliveryStatus,
    required String deliveryCode,
    required bool active,
    required String? fulfilmentPartner,
  }) = _DeliveryDto;

  factory DeliveryDto.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDtoFromJson(json);

  Delivery toDomain() {
    return Delivery(
      id: id,
      order: order.toDomain(),
      pickupAddress: pickupAddress.toDomain(),
      dropAddress: dropAddress.toDomain(),
      deliveryStatus: deliveryStatus,
      deliveryCode: deliveryCode,
      active: active,
      fulfilmentPartner: fulfilmentPartner,
    );
  }

  factory DeliveryDto.fromDomain(Delivery delivery) {
    return DeliveryDto(
      id: delivery.id,
      order: OrderDto.fromDomain(delivery.order),
      pickupAddress: AddressDto.fromDomain(delivery.pickupAddress),
      dropAddress: AddressDto.fromDomain(delivery.dropAddress),
      deliveryStatus: delivery.deliveryStatus,
      deliveryCode: delivery.deliveryCode,
      active: delivery.active,
      fulfilmentPartner: delivery.fulfilmentPartner,
    );
  }
}

@freezed
class OrderDto with _$OrderDto {
  const OrderDto._(); // Private empty constructor

  const factory OrderDto({
    @JsonKey(name: '_id') String? id,
    AddressDto? buyerAddress,
    AddressDto? sellerAddress,
    String? product,
    UserDto? seller,
    UserDto? buyer,
    int? price,
    String? status,
    List<TransitLogDto>? transitLogs,
    @JsonKey(name: 'createdAt') DateTime? createdAt,
    @JsonKey(name: 'updatedAt') DateTime? updatedAt,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  Order toDomain() {
    return Order(
      id: id,
      buyerAddress: buyerAddress?.toDomain(),
      sellerAddress: sellerAddress?.toDomain(),
      product: product,
      seller: seller?.toDomain(),
      buyer: buyer?.toDomain(),
      price: price,
      status: status,
      transitLogs: transitLogs?.map((log) => log.toDomain()).toList(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory OrderDto.fromDomain(Order order) {
    return OrderDto(
      id: order.id,
      buyerAddress: order.buyerAddress == null
          ? null
          : AddressDto.fromDomain(order.buyerAddress!),
      sellerAddress: order.sellerAddress == null
          ? null
          : AddressDto.fromDomain(order.sellerAddress!),
      product: order.product,
      seller: order.seller == null ? null : UserDto.fromDomain(order.seller!),
      buyer: order.buyer == null ? null : UserDto.fromDomain(order.buyer!),
      price: order.price,
      status: order.status,
      transitLogs: order.transitLogs
          ?.map((log) => TransitLogDto.fromDomain(log))
          .toList(),
      createdAt: order.createdAt,
      updatedAt: order.updatedAt,
    );
  }
}

orderFromJson(dynamic json) {
  // Check if json is a list and parse it
  if (json is Map) {
    return OrderDto.fromJson(json as Map<String, dynamic>);
  }
  // Handle as map if needed
  return OrderDto.fromDomain(Order(id: json));
}

@freezed
class TransitLogDto with _$TransitLogDto {
  const TransitLogDto._(); // Private empty constructor

  const factory TransitLogDto({
    required String message,
    @JsonKey(name: '_id') required String id,
    required DateTime time,
  }) = _TransitLogDto;

  factory TransitLogDto.fromJson(Map<String, dynamic> json) =>
      _$TransitLogDtoFromJson(json);

  TransitLog toDomain() {
    return TransitLog(
      message: message,
      id: id,
      time: time,
    );
  }

  factory TransitLogDto.fromDomain(TransitLog log) {
    return TransitLogDto(
      message: log.message,
      id: log.id,
      time: log.time,
    );
  }
}
