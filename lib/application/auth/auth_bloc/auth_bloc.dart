import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/auth/i_auth_facade.dart';
import 'package:shopping_app/domain/user/i_user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _iAuthFacade;
  final IUserRepository _iUserRepository;
  AuthBloc(
    this._iAuthFacade,
    this._iUserRepository,
  ) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(authCheckRequested: (value) async {
        final userOption = await _iUserRepository.getCurrentSavedUser();

        emit(userOption.fold(
          (_) {
            return const AuthState.unAuthenticated();
          },
          (user) {
            return AuthState.authenticated(role: user.role!);
          },
        ));
        // emit(const AuthState.unAuthenticated());
      }, signedOut: (value) async {
        await _iAuthFacade.signOut();
        emit(const AuthState.unAuthenticated());
      });
    });
  }
}
