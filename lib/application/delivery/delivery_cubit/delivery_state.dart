part of 'delivery_cubit.dart';

@freezed
class DeliveryState with _$DeliveryState {
  const factory DeliveryState.initial() = _Initial;
  const factory DeliveryState.loading() = _Loading;
  const factory DeliveryState.success({
    required Delivery? delivery,
  }) = _Success;
  const factory DeliveryState.failed({
    required DeliveryFailure failure,
  }) = _Failed;
}
