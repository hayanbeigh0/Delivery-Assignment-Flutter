import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/delivery/delivery.dart';
import 'package:shopping_app/domain/delivery/delivery_failure.dart';
import 'package:shopping_app/domain/delivery/i_delivery.dart';

part 'delivery_request_state.dart';
part 'delivery_request_cubit.freezed.dart';

@injectable
class DeliveryRequestCubit extends Cubit<DeliveryRequestState> {
  final IDeliveryRepository _iDeliveryRepository;
  DeliveryRequestCubit(this._iDeliveryRepository)
      : super(const DeliveryRequestState.initial());

  requestDelivery({
    required String orderId,
  }) async {
    emit(const DeliveryRequestState.loading());
    final Either<DeliveryFailure, Unit> failureOrSuccess =
        await _iDeliveryRepository.requestDelivery(
      orderId: orderId,
    );
    failureOrSuccess.fold(
      (failure) => emit(DeliveryRequestState.failed(failure: failure)),
      (_) => emit(const DeliveryRequestState.success(delivery: null)),
    );
  }
}
