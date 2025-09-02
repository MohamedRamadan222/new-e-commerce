import 'package:flutter/material.dart';

import '../models/item.dart';

class Cart with ChangeNotifier {
  List selectedItems = [];
  double price = 0;

  void addItem(Item item) {
    selectedItems.add(item);
    price += item.price;
    notifyListeners();
  }
  void removeItem(Item item) {
    selectedItems.remove(item);
    price -= item.price;
    notifyListeners();
  }
}
