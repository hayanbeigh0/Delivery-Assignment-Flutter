part of 'buyer_orders_cubit.dart';

@freezed
class BuyerOrdersState with _$BuyerOrdersState {
  const factory BuyerOrdersState.initial() = _Initial;
  const factory BuyerOrdersState.loading() = _Loading;
  const factory BuyerOrdersState.success({required List<ProductOrder> orders}) =
      _Success;
  const factory BuyerOrdersState.failed({
    required ProductOrderFailure failure,
  }) = _Failed;
}
