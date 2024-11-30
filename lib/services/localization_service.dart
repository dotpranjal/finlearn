import 'package:flutter/material.dart';

class LocalizationService extends ChangeNotifier {
  Locale _currentLocale = Locale('en');

  Locale get currentLocale => _currentLocale;

  List<Locale> get supportedLocales => [
        Locale('en'), // English
        Locale('hi'), // Hindi
        Locale('ta'), // Tamil
        // Add more supported languages here
      ];

  void changeLocale(Locale newLocale) {
    if (!supportedLocales.contains(newLocale)) return;
    _currentLocale = newLocale;
    notifyListeners();
  }
}

