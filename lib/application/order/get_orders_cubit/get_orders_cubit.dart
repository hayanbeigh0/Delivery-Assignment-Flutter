import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/product_order/i_product_order.dart';
import 'package:shopping_app/domain/product_order/product_order.dart';
import 'package:shopping_app/domain/product_order/product_order_failure.dart';

part 'get_orders_state.dart';
part 'get_orders_cubit.freezed.dart';

@injectable
class GetOrdersCubit extends Cubit<GetOrdersState> {
  final IProductOrderRepository _iProductOrderRepository;
  GetOrdersCubit(this._iProductOrderRepository)
      : super(const GetOrdersState.initial());
  getOrders({
    required String role,
  }) async {
    emit(const GetOrdersState.loading());
    Either<ProductOrderFailure, List<ProductOrder>> failureOrSuccess;
    if (role == 'BUYER') {
      failureOrSuccess = await _iProductOrderRepository.getMyOrders();
    } else {
      failureOrSuccess = await _iProductOrderRepository.getSellerOrders();
    }
    failureOrSuccess.fold(
      (failure) => emit(GetOrdersState.failed(failure: failure)),
      (orders) => emit(GetOrdersState.success(orders: orders)),
    );
  }
}
