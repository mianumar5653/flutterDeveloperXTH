import 'package:shared_preferences/shared_preferences.dart';

class ThemeClass{
  static const isDark = "isDark";

  setDarkTheme(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(isDark, value);
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(isDark) ?? false;
  }
}