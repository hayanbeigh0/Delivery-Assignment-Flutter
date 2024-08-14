import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/user/i_user.dart';
import 'package:shopping_app/domain/user/user.dart';
import 'package:shopping_app/domain/user/user_failure.dart';

part 'current_user_state.dart';
part 'current_user_cubit.freezed.dart';

@injectable
class CurrentUserCubit extends Cubit<CurrentUserState> {
  final IUserRepository _userRepository;
  CurrentUserCubit(this._userRepository)
      : super(const CurrentUserState.initial());

  getCurrentSavedUser() async {
    final Either<UserFailure, User> userOrFailure =
        await _userRepository.getCurrentSavedUser();
    return userOrFailure.fold(
      (f) => emit(CurrentUserState.failure(failure: f)),
      (user) => emit(CurrentUserState.success(user: user)),
    );
  }

  getSignedInUser() async {
    emit(const CurrentUserState.loading());
    final Either<UserFailure, User> userOrFailure =
        await _userRepository.getSignedInUser();
    return userOrFailure.fold((f) => emit(CurrentUserState.failure(failure: f)),
        (user) async {
      await _userRepository.saveCurrentUser(user: user);
      return emit(CurrentUserState.success(user: user));
    });
  }

  getAllOrgUsers({
    required int pageNumber,
    required String organisationId,
  }) async {
    final Either<UserFailure, List<User>> userOrFailure =
        await _userRepository.getAllOrgUsers(
      organisationId: organisationId,
      pageNumber: pageNumber,
    );
    return userOrFailure.fold((f) => emit(CurrentUserState.failure(failure: f)),
        (users) async {
      return emit(CurrentUserState.allOrgUsers(users: users));
    });
  }

  getAllUsers({
    required int pageNumber,
  }) async {
    final Either<UserFailure, List<User>> userOrFailure =
        await _userRepository.getAllUsers(
      pageNumber: pageNumber,
    );
    return userOrFailure.fold((f) => emit(CurrentUserState.failure(failure: f)),
        (users) async {
      return emit(CurrentUserState.allUsers(users: users));
    });
  }

  updateMe({required User user}) async {
    emit(const CurrentUserState.loading());
    final Either<UserFailure, User> userOrFailure =
        await _userRepository.updateMe(
      user: user,
    );
    await _userRepository.saveCurrentUser(user: user);

    return userOrFailure.fold(
      (f) => emit(CurrentUserState.failure(failure: f)),
      (newUser) async {
        await _userRepository.saveCurrentUser(user: newUser);
        return emit(CurrentUserState.success(user: newUser));
      },
    );
  }

  logout() async {
    emit(const CurrentUserState.loading());
    final failureOrUnit = await _userRepository.logout();
    failureOrUnit.fold(
      (logoutFailure) => emit(CurrentUserState.failure(failure: logoutFailure)),
      (r) => emit(const CurrentUserState.logoutSuccess()),
    );
  }
}
