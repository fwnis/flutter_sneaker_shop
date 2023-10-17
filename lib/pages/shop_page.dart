import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // alert the user
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Produto adionado ao carrinho!"),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          //search bar
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(24)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            ),
          ),

          // message
          Container(
            margin: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              "everyone flies... some fly longer than others",
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),

          // hot picks
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )
              ],
            ),
          ),

          // list of shoes
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Divider(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
