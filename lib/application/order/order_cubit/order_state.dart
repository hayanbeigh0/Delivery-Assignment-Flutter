part of 'order_cubit.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.loading() = _Loading;
  const factory OrderState.success({required ProductOrder order}) =
      _Success;
  const factory OrderState.failed({
    required ProductOrderFailure failure,
  }) = _Failed;
}
