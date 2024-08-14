import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/application/current_user_cubit/current_user_cubit.dart';
import 'package:shopping_app/application/order/create_order_cubit/create_order_cubit.dart';
import 'package:shopping_app/application/products/products_cubit/products_cubit.dart';
import 'package:shopping_app/domain/product_order/product_order.dart';
import 'package:shopping_app/domain/products/product.dart';
import 'package:shopping_app/injection.dart';
import 'package:shopping_app/presentation/core/utils/location_picker.dart';
import 'package:shopping_app/presentation/core/widgets/buttons/primary_text_button.dart';
import 'package:shopping_app/presentation/core/widgets/progress_indicator.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key, required this.productList});
  final List<Product> productList;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CurrentUserCubit>(
          create: (context) => getIt<CurrentUserCubit>()..getCurrentSavedUser(),
        ),
        BlocProvider<CreateOrderCubit>(
          create: (context) => getIt<CreateOrderCubit>(),
        ),
      ],
      child: BlocListener<CreateOrderCubit, CreateOrderState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            loading: (value) {
              showProgressIndicator(context);
            },
            failed: (value) {
              context.router.popForced();
              FlushbarHelper.createError(
                message: 'Failed placing the order!',
              ).show(context);
            },
            success: (value) {
              context.router.popForced();
              FlushbarHelper.createSuccess(
                message: 'Order placed sucessfully!',
              ).show(context);
            },
          );
        },
        child: BlocBuilder<CurrentUserCubit, CurrentUserState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const SizedBox(),
              success: (userValue) {
                return RefreshIndicator(
                  onRefresh: () {
                    return BlocProvider.of<ProductsCubit>(context)
                        .getAllProducts();
                  },
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 20,
                    ),
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 0,
                      bottom: 20,
                    ),
                    shrinkWrap: true,
                    itemCount: productList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 120.w,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 249, 251, 255),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 4,
                              color: Color.fromARGB(255, 203, 218, 249),
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            // context.router.navigate(
                            // ProductDetailRoute(product: productList[index]),
                            // );
                          },
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    height: 120.w,
                                    width: 120.w,
                                    child: Image.network(
                                      'https://economictimes.indiatimes.com/thumb/msid-100966456,width-1200,height-900,resizemode-4,imgsize-63314/why-become-a-product-manager.jpg?from=mdr',
                                      // productList[index].image.toString(),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      productList[index].name.toString(),
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: GoogleFonts.lato(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            const Color.fromARGB(189, 0, 0, 0),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      productList[index].description.toString(),
                                      maxLines: 3,
                                      overflow: TextOverflow.fade,
                                      style: GoogleFonts.lato(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '₹ ${productList[index].price.toString()}',
                                          style: GoogleFonts.lato(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Visibility(
                                          visible:
                                              userValue.user.role == 'BUYER',
                                          child: AppTextButton(
                                            onPressed: () async {
                                              showPickupLocationSheet(
                                                context: context,
                                                onPlacePicked: (result) {
                                                  Location? location;
                                                  location = Location(
                                                    type: 'Point',
                                                    coordinates: [
                                                      result.geometry!.location
                                                          .lat,
                                                      result.geometry!.location
                                                          .lng,
                                                    ],
                                                    address:
                                                        result.formattedAddress,
                                                  );
                                                  context
                                                      .read<CreateOrderCubit>()
                                                      .createOrder(
                                                        productId:
                                                            productList[index]
                                                                .id!,
                                                        address: Address(
                                                          type: 'Point',
                                                          address:
                                                              location.address!,
                                                          coordinates:
                                                              LocationCoordinates(
                                                            latitude: location
                                                                .coordinates[0],
                                                            longitude: location
                                                                .coordinates[1],
                                                          ),
                                                        ),
                                                      );
                                                  context.router.popForced();
                                                },
                                              );
                                            },
                                            child: const Text('Buy now'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
