import 'package:flutter/material.dart';

class ThemeController with ChangeNotifier {
  bool isDark = false;

  static ThemeData myLightTheme = ThemeData(
      textTheme: TextTheme(bodyLarge: TextStyle(color: Colors.yellow)),
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.grey,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.black),
      )));

  static ThemeData myDarkTheme = ThemeData(
      textTheme: TextTheme(
          bodyLarge: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30)),
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.black,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.white),
      )));

  onThemetoggled(bool value) {
    isDark = value;
    notifyListeners();
  }
}
