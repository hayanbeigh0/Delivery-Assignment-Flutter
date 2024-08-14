part of 'delivery_request_cubit.dart';

@freezed
class DeliveryRequestState with _$DeliveryRequestState {
  const factory DeliveryRequestState.initial() = _Initial;
  const factory DeliveryRequestState.loading() = _Loading;
  const factory DeliveryRequestState.success({
    required Delivery? delivery,
  }) = _Success;
  const factory DeliveryRequestState.failed({
    required DeliveryFailure failure,
  }) = _Failed;
}
