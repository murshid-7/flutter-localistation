import 'package:flutter/material.dart';

class LocalizationProvider with ChangeNotifier {
  Locale locale = const Locale('en');

  void setLanguage(String language) {
    locale = Locale(language);
    notifyListeners();
  }
}
