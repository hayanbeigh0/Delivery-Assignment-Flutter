import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
abstract class ProductsFailure with _$ProductsFailure {
  const factory ProductsFailure.cancelledByUser() = CancelledByUser;
  const factory ProductsFailure.serverError() = ServerError;
  const factory ProductsFailure.productsNotFound() = ProductsNotFound;
  const factory ProductsFailure.unKnownError() = UnKnownError;
}
