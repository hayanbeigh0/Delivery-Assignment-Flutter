import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/application/auth/sign_up_form_bloc/sign_up_form_bloc.dart';
import 'package:shopping_app/injection.dart';
import 'package:shopping_app/presentation/core/widgets/app_scaffold.dart';
import 'package:shopping_app/presentation/sign_up/widgets/sign_up_form.dart';

@RoutePage()
class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: 'Sign Up',
      body: BlocProvider<SignUpFormBloc>(
        create: (context) => getIt<SignUpFormBloc>(),
        child: const SignUpForm(),
      ),
    );
  }
}
