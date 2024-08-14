import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class OrdersButton extends StatelessWidget {
  const OrdersButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 45,
      width: 100,
      child: Row(
        children: [
          Icon(
            Icons.shopping_cart_outlined,
            color: Theme.of(context).primaryColor,
            size: 22,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                context.router.pushNamed('/orders');
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 81, 119, 185),
                ),
                child: const Center(
                  child: Text(
                    'Orders',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
