import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/application/products/products_cubit/products_cubit.dart';
import 'package:shopping_app/injection.dart';
import 'package:shopping_app/presentation/core/widgets/app_scaffold.dart';
import 'package:shopping_app/presentation/products/widgets/helper_widgets.dart';
import 'package:shopping_app/presentation/products/widgets/orders_button.dart';
import 'package:shopping_app/presentation/products/widgets/product_list.dart';

@RoutePage()
class SellerProductsPage extends StatelessWidget {
  const SellerProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductsCubit>(
      create: (context) => getIt<ProductsCubit>()..getAllProducts(),
      child: const SellerProductsPageContent(),
    );
  }
}

class SellerProductsPageContent extends StatefulWidget {
  const SellerProductsPageContent({super.key});

  @override
  State<SellerProductsPageContent> createState() =>
      _SellerProductsPageContentState();
}

class _SellerProductsPageContentState extends State<SellerProductsPageContent> {
  bool isFabVisible = true;

  bool categoryAll = true;

  bool categoryPremium = false;

  bool categoryTamilNadu = false;

  String currentCategory = 'All';
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      actionItems: const [
        OrdersButton(),
      ],
      appBarTitle: 'Products',
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
                'Your products',
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
              child: BlocProvider.value(
                value: context.read<ProductsCubit>(),
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
                        child: e.failure.maybeMap(
                          orElse: () {
                            return const UnknownErrorForSellerProducts();
                          },
                          productsNotFound: (value) {
                            return const NoProductsFound();
                          },
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
      floatingActionButton: BlocProvider<ProductsCubit>.value(
        value: context.read<ProductsCubit>(),
        child: Builder(builder: (context) {
          return FloatingActionButton.extended(
            label: const Text(
              'Add product',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(200),
            ),
            onPressed: () {
              context.router.pushNamed('/add-product').then((_) {
                BlocProvider.of<ProductsCubit>(context).getAllProducts();
                setState(() {});
              });
            },
          );
        }),
      ),
    );
  }
}
