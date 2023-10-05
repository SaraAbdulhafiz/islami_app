import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String loacl = 'en';
  ThemeMode theme = ThemeMode.light;

  changeTheme(ThemeMode mode) {
    theme = mode;
    notifyListeners();
  }

  changeLanguage(String langCode) {
    loacl = langCode;
    notifyListeners();
  }
}
