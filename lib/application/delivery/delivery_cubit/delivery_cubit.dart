import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/delivery/delivery.dart';
import 'package:shopping_app/domain/delivery/delivery_failure.dart';
import 'package:shopping_app/domain/delivery/i_delivery.dart';

part 'delivery_state.dart';
part 'delivery_cubit.freezed.dart';

@injectable
class DeliveryCubit extends Cubit<DeliveryState> {
  final IDeliveryRepository _iDeliveryRepository;
  DeliveryCubit(this._iDeliveryRepository)
      : super(
          const DeliveryState.initial(),
        );

  requestDeliveryJob({
    required String orderId,
  }) async {
    emit(const DeliveryState.loading());
    Either<DeliveryFailure, Delivery> failureOrSuccess =
        await _iDeliveryRepository.requestDeliveryJob(
      orderId: orderId,
    );
    failureOrSuccess.fold(
      (l) => emit(DeliveryState.failed(failure: l)),
      (_) => emit(const DeliveryState.success(delivery: null)),
    );
  }

  updateDeliveryStatus({
    required String id,
    required String status,
  }) async {
    emit(const DeliveryState.loading());
    Either<DeliveryFailure, Delivery> failureOrSuccess =
        await _iDeliveryRepository.updateDeliveryStatus(
      deliveryId: id,
      status: status,
    );
    failureOrSuccess.fold(
      (l) => emit(DeliveryState.failed(failure: l)),
      (r) => emit(DeliveryState.success(delivery: r)),
    );
  }

  fulfillDelivery({
    required String deliveryId,
  }) async {
    emit(const DeliveryState.loading());
    Either<DeliveryFailure, Unit> failureOrSuccess =
        await _iDeliveryRepository.fulfilleDelivery(
      deliveryId: deliveryId,
    );
    failureOrSuccess.fold(
      (l) => emit(DeliveryState.failed(failure: l)),
      (_) => emit(const DeliveryState.success(delivery: null)),
    );
  }
}
