import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/products/i_product.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/domain/products/product_failure.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final IProductRepository _iProductRepository;
  ProductCubit(this._iProductRepository) : super(const ProductState.initial());

  getProduct({required String id}) async {
    final Either<ProductsFailure, Product> failureOrSuccess =
        await _iProductRepository.getProduct(id: id);
    failureOrSuccess.fold(
      (failure) => emit(ProductState.error(failure: failure)),
      (product) => emit(ProductState.loaded(product: product)),
    );
  }
}
