import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier {
  ThemeMode appThemeMode = ThemeMode.light;
  void changeThemeMode(ThemeMode newThemeMode) {
    if (appThemeMode == newThemeMode) {
      return;
    }
    appThemeMode = newThemeMode;
    notifyListeners();
  }

  bool isDarkMode() {
    return appThemeMode == ThemeMode.dark;
  }
}
