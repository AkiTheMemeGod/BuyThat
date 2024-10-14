import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Air Jordan",
        price: "250",
        imagepath: "lib/images/shoe1.png",
        description: "Jordans which is made with elegant care."),
    Shoe(
        name: "Runners",
        price: "299",
        imagepath: "lib/images/shoe2.png",
        description: "Get anywhere fast. Just Do it."),
    Shoe(
        name: "Navy Lights",
        price: "314",
        imagepath: "lib/images/shoe3.png",
        description: "The Command of the sea welcomes you."),
    Shoe(
        name: "Air Force",
        price: "499",
        imagepath: "lib/images/shoe3.png",
        description: "Have the power of a jet in your legs.")
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addShoetoCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeitemfromcart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
