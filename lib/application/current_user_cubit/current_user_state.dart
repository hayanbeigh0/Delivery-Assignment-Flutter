part of 'current_user_cubit.dart';

@freezed
class CurrentUserState with _$CurrentUserState {
  const factory CurrentUserState.initial() = _Initial;
  const factory CurrentUserState.loading() = _Loading;
  const factory CurrentUserState.success({required User user}) = _Success;
  const factory CurrentUserState.allOrgUsers({
    required List<User> users,
  }) = _AllOrgUsers;
  const factory CurrentUserState.allUsers({
    required List<User> users,
  }) = _AllUsers;
  const factory CurrentUserState.logoutSuccess() = _LogoutSuccess;
  const factory CurrentUserState.failure({required UserFailure failure}) =
      _Failure;
}
