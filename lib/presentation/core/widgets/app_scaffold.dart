import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/application/current_user_cubit/current_user_cubit.dart';
import 'package:shopping_app/presentation/core/widgets/progress_indicator.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.appBarTitle,
    required this.body,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.actionItems = const [],
  });
  final String appBarTitle;
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final List<Widget> actionItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTitle == ''
          ? null
          : AppBar(
              title: Text(
                appBarTitle,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Colors.white),
              ),
              backgroundColor: Theme.of(context).primaryColor,
              foregroundColor: Colors.white,
              titleTextStyle: const TextStyle(
                color: Colors.white,
              ),
              actions: [
                ...actionItems,
                BlocProvider.value(
                  value: context.read<CurrentUserCubit>()
                    ..getCurrentSavedUser(),
                  child: BlocConsumer<CurrentUserCubit, CurrentUserState>(
                    listener: (context, state) {
                      state.maybeMap(
                        orElse: () => const SizedBox(),
                        logoutSuccess: (value) {
                          context.router.popForced();
                          context.router.replaceNamed('/sign-in');
                        },
                        loading: (value) {
                          showProgressIndicator(context);
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => const SizedBox(),
                        success: (value) {
                          return PopupMenuButton(
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  child: Center(
                                    child: TextButton(
                                      onPressed: () {
                                        BlocProvider.of<CurrentUserCubit>(
                                                context)
                                            .logout();
                                      },
                                      child: const Text('Logout'),
                                    ),
                                  ),
                                ),
                              ];
                            },
                            icon: const Icon(
                              Icons.more_vert,
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
      body: body,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}
