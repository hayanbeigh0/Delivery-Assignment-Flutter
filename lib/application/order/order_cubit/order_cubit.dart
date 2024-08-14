import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/product_order/i_product_order.dart';
import 'package:shopping_app/domain/product_order/product_order.dart';
import 'package:shopping_app/domain/product_order/product_order_failure.dart';

part 'order_state.dart';
part 'order_cubit.freezed.dart';

@injectable
class OrderCubit extends Cubit<OrderState> {
  final IProductOrderRepository _iProductOrderRepository;
  OrderCubit(this._iProductOrderRepository) : super(const OrderState.initial());

  updateOrderStatus({
    required String status,
    required String orderId,
  }) async {
    emit(const OrderState.loading());
    final Either<ProductOrderFailure, ProductOrder> failureOrSuccess =
        await _iProductOrderRepository.updateOrderStatus(
      orderId: orderId,
      status: status,
    );
    failureOrSuccess.fold(
      (failure) => emit(OrderState.failed(failure: failure)),
      (orders) => emit(OrderState.success(order: orders)),
    );
  }
}
