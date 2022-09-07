import 'package:flutter/material.dart';

class BasicController extends ChangeNotifier {
  var name = 'Nome não informado';

  void changeName(String newName) {
    name = newName;
    notifyListeners();
  }
}
