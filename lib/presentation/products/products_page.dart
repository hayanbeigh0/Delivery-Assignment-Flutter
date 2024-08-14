import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/application/products/products_cubit/products_cubit.dart';
import 'package:shopping_app/injection.dart';
import 'package:shopping_app/presentation/core/widgets/app_scaffold.dart';
import 'package:shopping_app/presentation/products/widgets/orders_button.dart';
import 'package:shopping_app/presentation/products/widgets/product_list.dart';

@RoutePage()
class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => ProductsPageState();
}

class ProductsPageState extends State<ProductsPage> {
  bool isFabVisible = true;

  bool categoryAll = true;

  bool categoryPremium = false;

  bool categoryTamilNadu = false;

  String currentCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: 'Products',
      actionItems: const [
        OrdersButton(),
      ],
      body: NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          if (notification.direction == ScrollDirection.idle) {
            setState(() {
              isFabVisible = true;
            });
          } else {
            setState(() {
              isFabVisible = false;
            });
          }
          return true;
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'All products',
                style:
                    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: BlocProvider(
                create: (context) => getIt<ProductsCubit>()..getAllProducts(),
                child: BlocBuilder<ProductsCubit, ProductsState>(
                  builder: (context, state) {
                    return state.maybeMap(
                      orElse: () => const SizedBox(),
                      initial: (value) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loading: (value) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      error: (e) => Center(
                        child: Text(
                          e.failure.map(
                            cancelledByUser: (value) => 'Cancelled by user!',
                            serverError: (value) => 'Server error!',
                            productsNotFound: (value) => 'No product found!',
                            unKnownError: (value) => 'Unknown error occurred!',
                          ),
                        ),
                      ),
                      loaded: (value) {
                        return ProductList(productList: value.products);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}