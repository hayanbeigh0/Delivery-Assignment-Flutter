part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.loading() = _Loading;
  const factory ProductsState.loaded({
    required List<Product> products,
  }) = _Loaded;
  const factory ProductsState.error({
    required ProductsFailure failure,
  }) = _Error;
}
