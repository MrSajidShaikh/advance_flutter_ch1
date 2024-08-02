
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangeThemeScreenProvider extends ChangeNotifier {
  bool isDark = false;
  late SharedPreferences sharedPreferences;

  void themeChange() {
    isDark = !isDark;
    setPreferences(isDark);
    notifyListeners();
  }

  Future<void> setPreferences(bool value) async {
    sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('theme', value);
  }

  ChangeThemeScreenProvider(bool theme){
    isDark = theme;
    notifyListeners();
  }
}

ThemeData changeThemeDataToLight = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.purple,
    onPrimary: Colors.green,
    secondary: Colors.blue,
    onSecondary: Colors.deepOrangeAccent,
    error: Colors.red,
    onError: Colors.redAccent,
    surface: Colors.white,
    onSurface: Colors.black,
  ),
);

ThemeData changeThemeDataToDark = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.dark,
    primary: Colors.amber,
    onPrimary: Colors.blue,
    secondary: Colors.pink,
    onSecondary: Colors.yellowAccent,
    error: Colors.red,
    onError: Colors.redAccent,
    surface: Colors.black,
    onSurface: Colors.white,
  ),
);
