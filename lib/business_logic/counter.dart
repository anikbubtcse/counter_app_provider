import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier {
  int value = 0;

  void increaseValue() {
    value = value + 1;
    notifyListeners();
  }

  void decreaseValue() {
    value = value - 1;
    notifyListeners();
  }
}
