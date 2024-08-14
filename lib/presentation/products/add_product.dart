import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/application/products/add_product_form_bloc/add_product_form_bloc.dart';
import 'package:shopping_app/injection.dart';
import 'package:shopping_app/presentation/core/widgets/app_scaffold.dart';
import 'package:shopping_app/presentation/products/widgets/product_form.dart';

@RoutePage()
class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: 'Add product',
      body: Container(
        padding: const EdgeInsets.all(12),
        child: BlocProvider<AddProductFormBloc>(
          create: (context) => getIt<AddProductFormBloc>(),
          child: const ProductForm(),
        ),
      ),
    );
  }
}
