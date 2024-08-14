import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_failure.freezed.dart';

@freezed
abstract class DeliveryFailure with _$DeliveryFailure {
  const factory DeliveryFailure.cancelledByUser() = CancelledByUser;
  const factory DeliveryFailure.serverError() = ServerError;
  const factory DeliveryFailure.orderNotFound() = OrderNotFound;
  const factory DeliveryFailure.unKnownError() = UnKnownError;
}
