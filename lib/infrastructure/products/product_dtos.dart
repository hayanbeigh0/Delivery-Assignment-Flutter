import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopping_app/domain/products/product.dart';

part 'product_dtos.freezed.dart';
part 'product_dtos.g.dart';

Map<String, dynamic> locationToJson(LocationDto? dto) {
  return {
    'type': dto?.type,
    'address': dto?.address,
    'coordinates': dto?.coordinates,
  };
}

@freezed
class ProductDto with _$ProductDto {
  const ProductDto._();
  const factory ProductDto({
    @JsonKey(name: '_id') String? id,
    SellerDto? seller,
    String? category,
    String? name,
    String? description,
    double? price,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(toJson: locationToJson) LocationDto? location,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  factory ProductDto.fromDomain(Product product) {
    return ProductDto(
      id: product.id,
      seller:
          product.seller == null ? null : SellerDto.fromDomain(product.seller!),
      category: product.category,
      name: product.name,
      description: product.description,
      price: product.price,
      createdAt: product.createdAt,
      updatedAt: product.updatedAt,
      location: product.location == null
          ? null
          : LocationDto.fromDomain(product.location!),
    );
  }

  Product toDomain() {
    return Product(
      id: id,
      seller: seller?.toDomain(),
      category: category,
      name: name,
      description: description,
      price: price,
      createdAt: createdAt,
      updatedAt: updatedAt,
      location: location?.toDomain(),
    );
  }
}

@freezed
class SellerDto with _$SellerDto {
  const SellerDto._();
  const factory SellerDto({
    required String id,
    required String name,
    required String email,
    required String role,
  }) = _SellerDto;

  factory SellerDto.fromJson(Map<String, dynamic> json) =>
      _$SellerDtoFromJson(json);

  factory SellerDto.fromDomain(Seller seller) {
    return SellerDto(
      id: seller.id,
      name: seller.name,
      email: seller.email,
      role: seller.role,
    );
  }

  Seller toDomain() {
    return Seller(
      id: id,
      name: name,
      email: email,
      role: role,
    );
  }
}

@freezed
class LocationDto with _$LocationDto {
  const LocationDto._();
  const factory LocationDto({
    required String type,
    required String? address,
    required List<double> coordinates,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  factory LocationDto.fromDomain(Location location) {
    return LocationDto(
      type: location.type,
      coordinates: location.coordinates,
      address: location.address,
    );
  }

  Location toDomain() {
    return Location(
      type: type,
      coordinates: coordinates,
    );
  }
}
