import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/application/auth/sign_in_form_bloc/sign_in_form_bloc.dart';
import 'package:shopping_app/presentation/core/widgets/app_text_form_field.dart';
import 'package:shopping_app/presentation/core/widgets/buttons/primary_elevated_button.dart';
import 'package:shopping_app/presentation/core/widgets/buttons/primary_text_button.dart';
import 'package:shopping_app/presentation/core/widgets/progress_indicator.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          showProgressIndicator(context);
        }
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              context.router.popForced();
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context);
            },
            (value) {
              if (value.role == 'BUYER') {
                context.router.replaceNamed('/products');
              } else if (value.role == 'SELLER') {
                context.router.replaceNamed('/seller-products');
              } else if (value.role == 'DELIVERY') {
                context.router.replaceNamed('/delivery');
              }
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                const SizedBox(height: 32),
                AppTextFormField(
                  hintText: 'johndoe@example.com',
                  label: 'Email',
                  onChanged: (value) {
                    BlocProvider.of<SignInFormBloc>(context).add(
                      SignInFormEvent.emailChanged(value),
                    );
                  },
                ),
                const SizedBox(height: 16),
                AppTextFormField(
                  obscureText: true,
                  hintText: '**********',
                  label: 'Password',
                  onChanged: (value) {
                    BlocProvider.of<SignInFormBloc>(context).add(
                      SignInFormEvent.passwordChanged(value),
                    );
                  },
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppElevatedButton(
                    onPressed: () {
                      BlocProvider.of<SignInFormBloc>(context).add(
                        const SignInFormEvent
                            .signInWithEmailAndPasswordPressed(),
                      );
                    },
                    child: const Text('Sign In'),
                  ),
                ),
                const SizedBox(height: 16),
                AppTextButton(
                  onPressed: () {
                    context.router.replaceNamed('/sign-up');
                  },
                  child: const Text('Register'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
