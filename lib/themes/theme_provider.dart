import 'package:audio_player/themes/dark_theme.dart';
import 'package:audio_player/themes/light_theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  //initially light mode
  ThemeData _themeData = lightMode;
// get theme
  ThemeData get themedata => _themeData;
// is dark mode
  bool get isDarkMode => _themeData == darkMode;
// set theme
  set theme(ThemeData themedata) {
    _themeData = themedata;
  }

// toggle between themes
  void toggleTheme() {
    if (_themeData == lightMode) {
      _themeData = darkMode;
    } else {
      _themeData = lightMode;
    }

    notifyListeners();
  }
}
