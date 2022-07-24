import 'package:flutter/material.dart';
import 'package:umar_arshad_flutter_developer_xth/SharedPreference/theme_storage.dart';

class ThemeController extends ChangeNotifier{
 ThemeClass themeClass = ThemeClass();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

   setDarkTheme(bool value) {
    // print(value);
    _darkTheme = value;
    themeClass.setDarkTheme(value);
    notifyListeners();
  }
}