import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/application/auth/auth_bloc/auth_bloc.dart';
import 'package:shopping_app/presentation/core/widgets/app_scaffold.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (value) {
            if (value.role == 'BUYER') {
              context.router.replaceNamed('/products');
            } else if (value.role == 'SELLER') {
              context.router.replaceNamed('/seller-products');
            } else if (value.role == 'DELIVERY') {
              context.router.replaceNamed('/delivery');
            }
          },
          unAuthenticated: (_) {
            context.router.replaceNamed('/sign-in');
          },
        );
      },
      child: const AppScaffold(
        appBarTitle: '',
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
