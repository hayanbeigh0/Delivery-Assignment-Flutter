part of 'product_cubit.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.loaded({
    required Product product,
  }) = _Loaded;
  const factory ProductState.error({
    required ProductsFailure failure,
  }) = _Error;
}
