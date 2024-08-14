import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_failure.freezed.dart';
@freezed
abstract class UserFailure with _$UserFailure{
  const factory UserFailure.cancelledByUser() = CancelledByUser;
  const factory UserFailure.serverError() = ServerError;
  const factory UserFailure.userNotFound() = UserNotFound;
  const factory UserFailure.unAuthenticated() = UnAuthenticated;
  const factory UserFailure.unKnownError() = UnKnownError;
  const factory UserFailure.logoutErro() = LogourError;
}