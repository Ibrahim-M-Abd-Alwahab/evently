import 'package:flutter/material.dart';

class AppLanguageProvider extends ChangeNotifier {
  // todo: data
  String appLanguage = 'en';
  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    //todo: appLanguage => default => current language
    //todo: newLanguage => user select new language
    appLanguage = newLanguage;
    //todo: after change data => call function
    notifyListeners();
  }
}
