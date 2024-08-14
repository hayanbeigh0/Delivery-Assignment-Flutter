import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/product_order/i_product_order.dart';
import 'package:shopping_app/domain/product_order/product_order.dart';
import 'package:shopping_app/domain/product_order/product_order_failure.dart';

part 'create_order_state.dart';
part 'create_order_cubit.freezed.dart';

@injectable
class CreateOrderCubit extends Cubit<CreateOrderState> {
  final IProductOrderRepository _iProductOrderRepository;
  CreateOrderCubit(this._iProductOrderRepository)
      : super(
          const CreateOrderState.initial(),
        );

  createOrder({
    required String productId,
    required Address address,
  }) async {
    emit(const CreateOrderState.loading());
    final Either<ProductOrderFailure, ProductOrder> failureOrSuccess =
        await _iProductOrderRepository.createOrder(
      productId: productId,
      address: address,
    );
    failureOrSuccess.fold(
      (failure) => emit(CreateOrderState.failed(failure: failure)),
      (order) => emit(CreateOrderState.success(order: order)),
    );
  }
}
