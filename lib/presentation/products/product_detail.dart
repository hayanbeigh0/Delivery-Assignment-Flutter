import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/application/products/favourites_cubit/favourites_cubit.dart';
import 'package:shopping_app/application/products/get_favourites_cubit/get_favourites_cubit.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/injection.dart';
import 'package:shopping_app/presentation/core/widgets/app_scaffold.dart';

@RoutePage()
class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (didPop) {
        context.router.navigateNamed('/products');
      },
      canPop: false,
      child: AppScaffold(
        appBarTitle: 'Product Details',
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 250.w,
                  width: 250.w,
                  child: Image.network(
                    '',
                    // product.image.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      product.name.toString(),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(189, 0, 0, 0),
                      ),
                    ),
                  ),
                  MultiBlocProvider(
                    providers: [
                      BlocProvider(
                        create: (context) =>
                            getIt<GetFavouritesCubit>()..getFavourites(),
                      ),
                      BlocProvider(
                        create: (context) => getIt<FavouritesCubit>(),
                      ),
                    ],
                    child: BlocListener<FavouritesCubit, FavouritesState>(
                      listener: (context, favouritesCubitState) {
                        favouritesCubitState.maybeMap(
                          orElse: () => const SizedBox(),
                          favLoaded: (value) {
                            BlocProvider.of<GetFavouritesCubit>(context)
                                .getFavourites();
                          },
                        );
                      },
                      child:
                          BlocBuilder<GetFavouritesCubit, GetFavouritesState>(
                        builder: (context, getFavouritesCubitState) {
                          return getFavouritesCubitState.map(
                            initial: (_) => IconButton(
                              icon: const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            ),
                            failed: (_) => IconButton(
                              icon: const Icon(
                                Icons.error,
                                color: Colors.red,
                              ),
                              onPressed: () {},
                            ),
                            loading: (_) => IconButton(
                              icon: const Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            ),
                            loaded: (value) {
                              final isFavorite = value.products
                                  .any((el) => el.id == product.id);
                              return IconButton(
                                icon: Icon(
                                  isFavorite
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  color: isFavorite ? Colors.red : Colors.grey,
                                ),
                                onPressed: () {
                                  if (isFavorite) {
                                    BlocProvider.of<FavouritesCubit>(context)
                                        .removeProduct(
                                      product: product,
                                    );
                                  } else {
                                    BlocProvider.of<FavouritesCubit>(context)
                                        .addProduct(
                                      product: product,
                                    );
                                  }
                                },
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                product.description.toString(),
                style: GoogleFonts.lato(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Price: ₹ ${product.price.toString()}',
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(189, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
