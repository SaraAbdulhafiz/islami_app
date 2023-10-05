import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String loacl = 'en';

  changeLanguage(String langCode) {
    loacl = langCode;
    notifyListeners();
  }
}
