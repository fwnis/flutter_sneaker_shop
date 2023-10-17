import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cart_item.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text(
                "My Cart",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),

            Expanded(
                child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                // get each shoe
                Shoe individualShoe = value.getUserCart()[index];

                // return the cart item
                return CartItem(
                  shoe: individualShoe,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}