import 'package:flutter/material.dart';

class AProvider extends ChangeNotifier {
  TextEditingController unameController = TextEditingController();
  String _pUsername = "";
  bool isDark = false;
  bool isSecure = false;
  ThemeData currentTheme = ThemeData.light();

  String get uname => _pUsername;

  void setUserName(String username) {
    _pUsername = username;
    notifyListeners();
  }

  void changeTheme(bool select) {
    currentTheme = select ? ThemeData.dark() : ThemeData.light();
    isDark = !isDark;
    notifyListeners();
  }

  void changeSecure(bool select) {
    isSecure = !isSecure;
    notifyListeners();
  }
}
