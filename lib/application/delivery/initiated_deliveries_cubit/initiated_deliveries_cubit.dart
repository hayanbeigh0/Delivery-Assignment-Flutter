import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/delivery/delivery.dart';
import 'package:shopping_app/domain/delivery/delivery_failure.dart';
import 'package:shopping_app/domain/delivery/i_delivery.dart';

part 'initiated_deliveries_state.dart';
part 'initiated_deliveries_cubit.freezed.dart';

@injectable
class InitiatedDeliveriesCubit extends Cubit<InitiatedDeliveriesState> {
  final IDeliveryRepository _iDeliveryRepository;
  InitiatedDeliveriesCubit(this._iDeliveryRepository)
      : super(const InitiatedDeliveriesState.initial());

  getInitiatedDeliveries() async {
    emit(const InitiatedDeliveriesState.loading());
    final Either<DeliveryFailure, List<Delivery>> failureOrSuccess =
        await _iDeliveryRepository.initiatedDeliveries();
    failureOrSuccess.fold(
      (failure) => emit(InitiatedDeliveriesState.failed(failure: failure)),
      (delivery) => emit(InitiatedDeliveriesState.success(delivery: delivery)),
    );
  }
}
