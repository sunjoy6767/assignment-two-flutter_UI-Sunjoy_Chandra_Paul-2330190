import 'package:flutter/material.dart';

class NavProvider extends ChangeNotifier {
  int _index = 0;

  int get index => _index;

  void setIndex(int index) {
    if (_index == index) return;
    _index = index;
    notifyListeners();
  }
}
