import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shopping_app/domain/auth/auth_failure.dart';
import 'package:shopping_app/domain/auth/i_auth_facade.dart';
import 'package:shopping_app/domain/user/i_user.dart';
import 'package:shopping_app/domain/user/user.dart';
import 'package:shopping_app/presentation/utils/validators.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _iAuthFacade;
  final IUserRepository _iUserRepository;
  SignInFormBloc(this._iAuthFacade, this._iUserRepository)
      : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        emailChanged: (value) {
          emit(state.copyWith(
            emailAddress: value.emailStr,
            authFailureOrSuccessOption: none(),
          ));
        },
        passwordChanged: (value) {
          emit(state.copyWith(
            password: value.passwordStr,
            authFailureOrSuccessOption: none(),
          ));
        },
        signInWithEmailAndPasswordPressed: (value) async {
          Either<AuthFailure, User>? failureOrSuccess;

          if (checkEmailPasswordValidation(
              email: state.emailAddress, password: state.password)) {
            emit(state.copyWith(isSubmitting: true));

            failureOrSuccess = await _iAuthFacade.signInWithEmailAndPassword(
              emailAddress: state.emailAddress,
              password: state.password,
            );
            final User? user = failureOrSuccess.fold(
              (l) => null,
              (r) => r,
            );
            if (user != null) {
              await _iUserRepository.saveCurrentUser(user: user);
            }

            emit(
              state.copyWith(
                isSubmitting: false,
                authFailureOrSuccessOption: some(failureOrSuccess),
              ),
            );
            return;
          }

          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
      );
    });
  }
}
