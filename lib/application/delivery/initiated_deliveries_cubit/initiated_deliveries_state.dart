part of 'initiated_deliveries_cubit.dart';

@freezed
class InitiatedDeliveriesState with _$InitiatedDeliveriesState {
  const factory InitiatedDeliveriesState.initial() = _Initial;
  const factory InitiatedDeliveriesState.loading() = _Loading;
  const factory InitiatedDeliveriesState.success({
    required List<Delivery> delivery,
  }) = _Success;
  const factory InitiatedDeliveriesState.failed({
    required DeliveryFailure failure,
  }) = _Failed;
}
