import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of item on sale
  final List _shopItems = [
    ["Aaocado", "4.00", "assest/image/avocado.png", Colors.green],
    ["Banana", "2.50", "assest/image/banana.png", Colors.yellow],
    ["Chicken", "12.80", "assest/image/chicken.png", Colors.brown],
    ["Water", "1.00", "assest/image/water.png", Colors.blue],
  ];

  // list of cart item
  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // add item from cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
