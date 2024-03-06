import 'package:flutter/cupertino.dart';

class CartClient extends ChangeNotifier {

  final Map<int, int> items = {};

  void add(int key) {
    if (items.containsKey(key)) {
      items[key] = items[key]! + 1;
    } else {
      items[key] = 1;
    }
    notifyListeners();
  }

  void remove(int key) {
    if (items.containsKey(key)) {
      if (items[key]! > 1) {
        items[key] = items[key]! - 1;
      } else {
        items.remove(key);
      }
    }
    notifyListeners();
  }
}
