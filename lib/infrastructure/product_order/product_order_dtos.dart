import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/domain/product_order/product_order.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/domain/user/user.dart';
import 'package:shopping_app/infrastructure/products/product_dtos.dart';
import 'package:shopping_app/infrastructure/user/user_dtos.dart';

part 'product_order_dtos.freezed.dart';
part 'product_order_dtos.g.dart';

@freezed
class ProductOrderDto with _$ProductOrderDto {
  const ProductOrderDto._();
  const factory ProductOrderDto({
    required AddressDto buyerAddress,
    required AddressDto sellerAddress,
    @JsonKey(name: '_id') required String id,
    @JsonKey(fromJson: productFromJson) required ProductDto product,
    @JsonKey(fromJson: sellerFromJson) required String seller,
    @JsonKey(fromJson: userFromJson) required UserDto buyer,
    required double price,
    required String status,
    required List<TransitLogDto> transitLogs,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ProductOrderDto;

  factory ProductOrderDto.fromJson(Map<String, dynamic> json) =>
      _$ProductOrderDtoFromJson(json);

  ProductOrder toDomain() {
    return ProductOrder(
      buyerAddress: buyerAddress.toDomain(),
      sellerAddress: sellerAddress.toDomain(),
      id: id,
      product: product.toDomain(),
      seller: seller,
      buyer: buyer.toDomain(),
      price: price,
      status: status,
      transitLogs:
          transitLogs.map((transitLogDto) => transitLogDto.toDomain()).toList(),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  factory ProductOrderDto.fromDomain(ProductOrder order) {
    return ProductOrderDto(
      buyerAddress: AddressDto.fromDomain(order.buyerAddress),
      sellerAddress: AddressDto.fromDomain(order.sellerAddress),
      id: order.id,
      product: ProductDto.fromDomain(order.product),
      seller: order.seller,
      buyer: UserDto.fromDomain(order.buyer),
      price: order.price,
      status: order.status,
      transitLogs: order.transitLogs
          .map((transitLog) => TransitLogDto.fromDomain(transitLog))
          .toList(),
      createdAt: order.createdAt,
      updatedAt: order.updatedAt,
    );
  }
}

@freezed
class AddressDto with _$AddressDto {
  const AddressDto._();
  const factory AddressDto({
    required String? address,
    required String type,
    @JsonKey(fromJson: locationFromJson)
    required LocationCoordinatesDto coordinates,
  }) = _AddressDto;

  factory AddressDto.fromJson(Map<String, dynamic> json) =>
      _$AddressDtoFromJson(json);

  Address toDomain() {
    return Address(
      address: address,
      type: type,
      coordinates: coordinates.toDomain(),
    );
  }

  factory AddressDto.fromDomain(Address address) {
    return AddressDto(
      address: address.address,
      type: address.type,
      coordinates: LocationCoordinatesDto.fromDomain(address.coordinates),
    );
  }
}

@freezed
class LocationCoordinatesDto with _$LocationCoordinatesDto {
  const LocationCoordinatesDto._();
  const factory LocationCoordinatesDto({
    required double? latitude,
    required double? longitude,
  }) = _LocationCoordinatesDto;

  factory LocationCoordinatesDto.fromJson(Map<String, dynamic> json) =>
      _$LocationCoordinatesDtoFromJson(json);

  LocationCoordinates toDomain() {
    return LocationCoordinates(
      latitude: latitude,
      longitude: longitude,
    );
  }

  factory LocationCoordinatesDto.fromDomain(LocationCoordinates coordinates) {
    return LocationCoordinatesDto(
      latitude: coordinates.latitude,
      longitude: coordinates.longitude,
    );
  }
}

locationFromJson(dynamic json) {
  // Check if json is a list and parse it
  if (json is List) {
    if (json.isNotEmpty) {
      return LocationCoordinatesDto(
        latitude: json[0] as double,
        longitude: json[1] as double,
      );
    } else {
      return const LocationCoordinatesDto(
        latitude: null,
        longitude: null,
      );
    }
  }
  // Handle as map if needed
  return json as Map<String, dynamic>;
}

sellerFromJson(dynamic json) {
  // Check if json is a list and parse it
  if (json is Map) {
    return json['id'];
  }
  // Handle as map if needed
  return json;
}

productFromJson(dynamic json) {
  // Check if json is a list and parse it
  if (json is Map) {
    return ProductDto.fromJson(json as Map<String, dynamic>);
  }
  // Handle as map if needed
  return ProductDto.fromDomain(Product(id: json));
}

userFromJson(dynamic json) {
  // Check if json is a list and parse it
  if (json is Map) {
    return UserDto.fromJson(json as Map<String, dynamic>);
  }
  // Handle as map if needed
  return UserDto.fromDomain(User(id: json));
}

@freezed
class TransitLogDto with _$TransitLogDto {
  const TransitLogDto._();
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

  factory TransitLogDto.fromDomain(TransitLog transitLog) {
    return TransitLogDto(
      message: transitLog.message,
      id: transitLog.id,
      time: transitLog.time,
    );
  }
}
