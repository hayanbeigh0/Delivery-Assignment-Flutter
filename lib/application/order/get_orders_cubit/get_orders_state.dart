part of 'get_orders_cubit.dart';

@freezed
class GetOrdersState with _$GetOrdersState {
  const factory GetOrdersState.initial() = _Initial;
  const factory GetOrdersState.loading() = _Loading;
  const factory GetOrdersState.success({
    required List<ProductOrder> orders,
  }) = _Success;
  const factory GetOrdersState.failed({
    required ProductOrderFailure failure,
  }) = _Failed;
}
