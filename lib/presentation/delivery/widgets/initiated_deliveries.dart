import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/application/current_user_cubit/current_user_cubit.dart';
import 'package:shopping_app/application/delivery/deliveries_cubit/deliveries_cubit.dart';
import 'package:shopping_app/application/delivery/delivery_cubit/delivery_cubit.dart';
import 'package:shopping_app/application/delivery/initiated_deliveries_cubit/initiated_deliveries_cubit.dart';
import 'package:shopping_app/injection.dart';
import 'package:shopping_app/presentation/core/widgets/app_scaffold.dart';
import 'package:shopping_app/presentation/core/widgets/progress_indicator.dart';

class InitiatedDeliveries extends StatelessWidget {
  const InitiatedDeliveries({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: 'Deliveries',
      body: BlocListener<DeliveryCubit, DeliveryState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            loading: (value) {
              showProgressIndicator(context);
            },
            success: (value) {
              BlocProvider.of<DeliveriesCubit>(context).getDeliveries(
                activeDeliveries: true,
              );
              context.router.popForced();
            },
            failed: (value) {
              context.router.popForced();
            },
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<CurrentUserCubit, CurrentUserState>(
            builder: (context, userState) {
              return userState.maybeMap(
                orElse: () => const SizedBox(),
                success: (userValue) => BlocProvider<InitiatedDeliveriesCubit>(
                  create: (context) => getIt<InitiatedDeliveriesCubit>()
                    ..getInitiatedDeliveries(),
                  child: BlocListener<DeliveryCubit, DeliveryState>(
                    listener: (context, state) {
                      state.maybeMap(
                        orElse: () {},
                        loading: (value) {
                          showProgressIndicator(context);
                        },
                        success: (value) {
                          context.router.popForced();
                        },
                        failed: (value) {
                          context.router.popForced();
                        },
                      );
                    },
                    child: BlocBuilder<InitiatedDeliveriesCubit,
                        InitiatedDeliveriesState>(
                      builder: (context, state) {
                        return state.maybeMap(
                          orElse: () => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          loading: (value) => const Center(
                            child: CircularProgressIndicator(),
                          ),
                          failed: (value) => Center(
                            child: Text(value.failure.maybeMap(
                              orElse: () => '',
                              cancelledByUser: (_) => 'Cancelled by user!',
                              orderNotFound: (_) => 'Orders not found!',
                              serverError: (_) => 'Server error!',
                              unKnownError: (_) => 'Unknown error!',
                            )),
                          ),
                          success: (value) {
                            if (value.delivery.isEmpty) {
                              return Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'No orders yet!',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'You will see the orders here once the seller marks an order as ready.',
                                      textAlign: TextAlign.center,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        BlocProvider.of<DeliveriesCubit>(
                                                context)
                                            .getDeliveries(
                                          activeDeliveries: true,
                                        );
                                      },
                                      child: const Text('Refresh'),
                                    )
                                  ],
                                ),
                              );
                            }
                            return RefreshIndicator(
                              onRefresh: () =>
                                  BlocProvider.of<DeliveriesCubit>(context)
                                      .getDeliveries(
                                activeDeliveries: true,
                              ),
                              child: ListView.separated(
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                  height: 20,
                                ),
                                itemCount: value.delivery.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      // context.router.navigate(
                                      //   ProductDetailRoute(product: productList[index]),
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
                                                      BorderRadius.circular(
                                                          15)),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    value.delivery[index].order
                                                        .buyer!.name
                                                        .toString(),
                                                    maxLines: 1,
                                                    overflow: TextOverflow.clip,
                                                    style: GoogleFonts.lato(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          const Color.fromARGB(
                                                              189, 0, 0, 0),
                                                    ),
                                                  ),
                                                  Text(
                                                    value.delivery[index]
                                                        .deliveryStatus
                                                        .toString(),
                                                    maxLines: 1,
                                                    overflow: TextOverflow.clip,
                                                    style: GoogleFonts.lato(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color:
                                                          const Color.fromARGB(
                                                        189,
                                                        0,
                                                        0,
                                                        0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                value.delivery[index].order
                                                    .buyerAddress!.address
                                                    .toString(),
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
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '₹ ${value.delivery[index].order.price}',
                                                    style: GoogleFonts.lato(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  if (value.delivery[index]
                                                          .deliveryStatus ==
                                                      'INITIATED')
                                                    TextButton(
                                                      onPressed: () {
                                                        BlocProvider.of<
                                                                    DeliveryCubit>(
                                                                context)
                                                            .requestDeliveryJob(
                                                                orderId: value
                                                                    .delivery[
                                                                        index]
                                                                    .id);
                                                      },
                                                      child:
                                                          const Text('Accept'),
                                                    )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
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
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
