import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_order_failure.freezed.dart';

@freezed
abstract class ProductOrderFailure with _$ProductOrderFailure {
  const factory ProductOrderFailure.cancelledByUser() = CancelledByUser;
  const factory ProductOrderFailure.serverError() = ServerError;
  const factory ProductOrderFailure.orderNotFound() = OrderNotFound;
  const factory ProductOrderFailure.unKnownError() = UnKnownError;
}
