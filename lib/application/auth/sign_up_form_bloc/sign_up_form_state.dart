part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required String emailAddress,
    required String password,
    required String displayName,
    required String role,
    required String photoUrl,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, User>> authFailureOrSuccessOption,
  }) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
        emailAddress: '',
        password: '',
        displayName: '',
        photoUrl: '',
        role: 'BUYER',
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
