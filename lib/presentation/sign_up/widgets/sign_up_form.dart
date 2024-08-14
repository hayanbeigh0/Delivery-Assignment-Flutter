import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/application/auth/sign_up_form_bloc/sign_up_form_bloc.dart';
import 'package:shopping_app/presentation/core/widgets/app_text_form_field.dart';
import 'package:shopping_app/presentation/core/widgets/buttons/primary_elevated_button.dart';
import 'package:shopping_app/presentation/core/widgets/buttons/primary_text_button.dart';
import 'package:shopping_app/presentation/core/widgets/progress_indicator.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) {
        if (state.isSubmitting) {
          showProgressIndicator(context);
        }
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
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
                const SizedBox(height: 16),
                AppTextFormField(
                  label: 'Name',
                  hintText: 'John Doe',
                  onChanged: (value) {
                    BlocProvider.of<SignUpFormBloc>(context).add(
                      SignUpFormEvent.nameChanged(value),
                    );
                  },
                ),
                const SizedBox(height: 16),
                AppTextFormField(
                  label: 'Email',
                  hintText: 'johndoe@example.com',
                  onChanged: (value) {
                    BlocProvider.of<SignUpFormBloc>(context).add(
                      SignUpFormEvent.emailChanged(value),
                    );
                  },
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Role'),
                      const SizedBox(
                        height: 5,
                      ),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        isExpanded: true,
                        value: state.role,
                        items: const [
                          DropdownMenuItem(
                            value: 'BUYER',
                            child: Text('Buyer'),
                          ),
                          DropdownMenuItem(
                            value: 'SELLER',
                            child: Text('Seller'),
                          ),
                          DropdownMenuItem(
                            value: 'DELIVERY',
                            child: Text('Delivery'),
                          ),
                        ],
                        onChanged: (value) {
                          BlocProvider.of<SignUpFormBloc>(context).add(
                            SignUpFormEvent.role(value!),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                AppTextFormField(
                  label: 'Password',
                  hintText: '**********',
                  obscureText: true,
                  onChanged: (value) {
                    BlocProvider.of<SignUpFormBloc>(context).add(
                      SignUpFormEvent.passwordChanged(value),
                    );
                  },
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppElevatedButton(
                    onPressed: () {
                      BlocProvider.of<SignUpFormBloc>(context).add(
                        const SignUpFormEvent
                            .registerWithEmailAndPasswordPressed(),
                      );
                    },
                    child: const Text('Register'),
                  ),
                ),
                const SizedBox(height: 32),
                AppTextButton(
                  onPressed: () {
                    context.router.replaceNamed('/sign-in');
                  },
                  child: const Text('Sign In'),
                ),
                const SizedBox(width: 16),
              ],
            ),
          ),
        );
      },
    );
  }
}
