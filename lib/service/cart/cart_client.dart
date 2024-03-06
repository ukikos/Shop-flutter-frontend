import 'package:flutter/cupertino.dart';

class CartClient extends ChangeNotifier {

  final Map<int, int> items = {};
  int sum = 0;

  void add(int key, int price) {
    if (items.containsKey(key)) {
      items[key] = items[key]! + 1;
    } else {
      items[key] = 1;
    }
    sum += price;
    notifyListeners();
  }

  void remove(int key, int price) {
    if (items.containsKey(key)) {
      if (items[key]! > 1) {
        items[key] = items[key]! - 1;
      } else {
        items.remove(key);
      }
    }
    sum -= price;
    notifyListeners();
  }
}
