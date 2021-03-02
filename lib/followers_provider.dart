import 'package:flutter/material.dart';

class Followers extends ChangeNotifier {
  List<String> _following = [];

  List<String> get followers => _following;

  add(String name) {
    _following.add(name);
    notifyListeners();
  }

  remove(String name) {
    _following.remove(name);
    notifyListeners();
  }
}
