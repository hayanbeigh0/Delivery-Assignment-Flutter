import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/delivery/delivery.dart';
import 'package:shopping_app/domain/delivery/delivery_failure.dart';
import 'package:shopping_app/domain/delivery/i_delivery.dart';

part 'deliveries_state.dart';
part 'deliveries_cubit.freezed.dart';

@injectable
class DeliveriesCubit extends Cubit<DeliveriesState> {
  final IDeliveryRepository _iDeliveryRepository;
  DeliveriesCubit(this._iDeliveryRepository)
      : super(const DeliveriesState.initial());

  getDeliveries({required bool activeDeliveries}) async {
    emit(const DeliveriesState.loading());
    final Either<DeliveryFailure, List<Delivery>> failureOrSuccess;
    if (activeDeliveries) {
      failureOrSuccess = await _iDeliveryRepository.getActiveDeliveries();
    } else {
      failureOrSuccess = await _iDeliveryRepository.getInactiveDeliveries();
    }
    emit(const DeliveriesState.loading());
    failureOrSuccess.fold(
      (failure) => emit(
        DeliveriesState.failed(failure: failure),
      ),
      (deliveries) => emit(
        DeliveriesState.success(deliveries: deliveries),
      ),
    );
  }
}
