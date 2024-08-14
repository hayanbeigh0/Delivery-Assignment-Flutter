
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/application/order/get_orders_cubit/get_orders_cubit.dart';

class NoProductsFound extends StatelessWidget {
  const NoProductsFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'No products yet!',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'You will see the orders here once a users buys any of your products.',
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {
              BlocProvider.of<GetOrdersCubit>(context).getOrders(
                role: "SELLER",
              );
            },
            child: const Text('Refresh'),
          )
        ],
      ),
    );
  }
}

class UnknownErrorForSellerProducts extends StatelessWidget {
  const UnknownErrorForSellerProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'No products yet!',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'An unknown error occurred!',
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {
              BlocProvider.of<GetOrdersCubit>(context).getOrders(
                role: "SELLER",
              );
            },
            child: const Text('Refresh'),
          )
        ],
      ),
    );
  }
}
