import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/product_order/i_product_order.dart';
import 'package:shopping_app/domain/product_order/product_order.dart';
import 'package:shopping_app/domain/product_order/product_order_failure.dart';

part 'buyer_orders_state.dart';
part 'buyer_orders_cubit.freezed.dart';

@injectable
class BuyerOrdersCubit extends Cubit<BuyerOrdersState> {
  final IProductOrderRepository _iProductOrderRepository;
  BuyerOrdersCubit(this._iProductOrderRepository)
      : super(const BuyerOrdersState.initial());

  getOrders() async {
    emit(const BuyerOrdersState.loading());
    final Either<ProductOrderFailure, List<ProductOrder>> failureOrSuccess =
        await _iProductOrderRepository.getMyOrders();
    failureOrSuccess.fold(
      (failure) => emit(BuyerOrdersState.failed(failure: failure)),
      (orders) => emit(BuyerOrdersState.success(orders: orders)),
    );
  }
}
