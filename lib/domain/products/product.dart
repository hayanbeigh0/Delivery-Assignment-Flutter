import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    String? id,
    Seller? seller,
    String? category,
    String? name,
    String? description,
    double? price,
    DateTime? createdAt,
    DateTime? updatedAt,
    Location? location,
  }) = _Product;

  factory Product.empty() => Product(
        id: '',
        seller: Seller.empty(),
        category: '',
        name: '',
        description: '',
        price: 0.0,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        location: Location.empty(),
      );
}

@freezed
abstract class Seller with _$Seller {
  const factory Seller({
    required String id,
    required String name,
    required String email,
    required String role,
  }) = _Seller;

  factory Seller.empty() => const Seller(
        id: '',
        name: '',
        email: '',
        role: '',
      );
}

@freezed
abstract class Location with _$Location {
  const factory Location({
    required String type,
    String? address,
    int? pin,
    required List<double> coordinates,
  }) = _Location;

  factory Location.empty() => const Location(
        type: 'Point',
        coordinates: [],
        address: '',
        pin: null,
      );
}
