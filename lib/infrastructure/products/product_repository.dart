import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:shopping_app/domain/products/i_product.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/domain/products/product_failure.dart';
import 'package:shopping_app/infrastructure/products/product_dtos.dart';

@LazySingleton(as: IProductRepository)
class ProductRepository extends IProductRepository {
  final List<Product> favouriteProducts = [];
  final Dio dio = GetIt.instance<Dio>();

  @override
  Future<Either<ProductsFailure, List<Product>>> getAllProducts() async {
    try {
      final Response response = await dio.get(
        '/products',
      );
      final List<Product> products =
          (response.data['data']['data'] as List<dynamic>)
              .map((el) => ProductDto.fromJson(el).toDomain())
              .toList();

      return right(products);
    } on DioException catch (e) {
      log('Error getProducts: $e');
      return left(const ProductsFailure.unKnownError());
    } catch (e) {
      log('Error getProducts: $e');
      return left(const ProductsFailure.unKnownError());
    }
  }

  @override
  Future<Either<ProductsFailure, Product>> getProduct({
    required String id,
  }) async {
    try {
      final Response response = await dio.get(
        '/product/$id',
      );
      log(response.data.toString());
      final Product product = ProductDto.fromDomain(response.data).toDomain();

      return right(product);
    } on DioException catch (e) {
      log('Error getProduct: $e');
      return left(const ProductsFailure.unKnownError());
    } catch (e) {
      log('Error getProduct: $e');
      return left(const ProductsFailure.unKnownError());
    }
  }

  @override
  Future<Either<ProductsFailure, Unit>> addToFavourites({
    required Product product,
  }) async {
    try {
      favouriteProducts.add(product);
      return right(unit);
    } catch (e) {
      return left(const ProductsFailure.productsNotFound());
    }
  }

  @override
  Future<Either<ProductsFailure, List<Product>>> getFavourites() async {
    try {
      // if (favouriteProducts.isEmpty) {
      // return left(const ProductsFailure.productsNotFound());
      // }
      return right(favouriteProducts);
    } catch (e) {
      return left(const ProductsFailure.unKnownError());
    }
  }

  @override
  Future<Either<ProductsFailure, Unit>> removeFromFavourites(
      {required Product product}) async {
    try {
      favouriteProducts.removeWhere((el) => el.id == product.id);
      return right(unit);
    } catch (e) {
      return left(const ProductsFailure.productsNotFound());
    }
  }

  @override
  Future<Either<ProductsFailure, Product>> addProduct({
    required Product product,
  }) async {
    try {
      final Response response = await dio.post('/products',
          data: ProductDto.fromDomain(product).toJson());
      log(response.data.toString());

      return right(product);
    } on DioException catch (e) {
      log('Error create product: $e');
      return left(const ProductsFailure.unKnownError());
    } catch (e) {
      log('Error create product: $e');
      return left(const ProductsFailure.unKnownError());
    }
  }
}
