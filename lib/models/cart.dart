import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Zoom Freak",
      price: "236",
      description: "The forward-thinking design of his latest signature shoe.",
      imagePath: "lib/images/zoomfreak.png",
    ),
    Shoe(
      name: "Air Jordan",
      price: "240",
      description: "The forward-thinking design of his latest signature shoe.",
      imagePath: "lib/images/airjordan.png",
    ),
    Shoe(
      name: "Air Jordan Low",
      price: "220",
      description: "The forward-thinking design of his latest signature shoe.",
      imagePath: "lib/images/airjordanlow.png",
    ),
    Shoe(
      name: "Lebron",
      price: "180",
      description: "The forward-thinking design of his latest signature shoe.",
      imagePath: "lib/images/lebron.png",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
