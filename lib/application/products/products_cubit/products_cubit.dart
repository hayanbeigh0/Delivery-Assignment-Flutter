import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/products/i_product.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/domain/products/product_failure.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

@injectable
class ProductsCubit extends Cubit<ProductsState> {
  final IProductRepository _iProductRepository;
  ProductsCubit(this._iProductRepository)
      : super(const ProductsState.initial());

  getAllProducts() async {
    final Either<ProductsFailure, List<Product>> failureOrSuccess =
        await _iProductRepository.getAllProducts();
    failureOrSuccess.fold(
      (failure) => emit(ProductsState.error(failure: failure)),
      (products) => emit(ProductsState.loaded(products: products)),
    );
  }

  // getProduct({required String id}) async {
  //   final Either<ProductsFailure, List<Product>> failureOrSuccess =
  //       await _iProductRepository.getAllProducts();
  //   failureOrSuccess.fold(
  //     (failure) => emit(ProductsState.error(failure: failure)),
  //     (products) => emit(ProductsState.loaded(products: products)),
  //   );
  // }
}
