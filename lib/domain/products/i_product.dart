import 'package:dartz/dartz.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/domain/products/product_failure.dart';

abstract class IProductRepository {
  Future<Either<ProductsFailure, List<Product>>> getAllProducts();
  Future<Either<ProductsFailure, Product>> getProduct({
    required String id,
  });
  Future<Either<ProductsFailure, Unit>> addToFavourites({
    required Product product,
  });
  Future<Either<ProductsFailure, Unit>> removeFromFavourites({
    required Product product,
  });
  Future<Either<ProductsFailure, List<Product>>> getFavourites();
  Future<Either<ProductsFailure, Product>> addProduct({
    required Product product,
  });
}
