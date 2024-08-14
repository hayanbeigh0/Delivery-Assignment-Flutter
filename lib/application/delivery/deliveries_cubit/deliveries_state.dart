part of 'deliveries_cubit.dart';

@freezed
class DeliveriesState with _$DeliveriesState {
  const factory DeliveriesState.initial() = _Initial;
  const factory DeliveriesState.loading() = _Loading;
  const factory DeliveriesState.success({
    required List<Delivery> deliveries,
  }) = _Successs;
  const factory DeliveriesState.failed({
    required DeliveryFailure failure,
  }) = _Failed;
}
