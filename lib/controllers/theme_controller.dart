import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/themes/light_theme.dart';
import '../core/themes/dark_theme.dart';

class ThemeController extends GetxController {
  Rx<ThemeMode> _themeMode = ThemeMode.light.obs;

  ThemeMode get themeMode => _themeMode.value;

  ThemeData get lightTheme => LightTheme.data;
  ThemeData get darkTheme => DarkTheme.data;

  void toggleTheme() {
    if (_themeMode.value == ThemeMode.light) {
      _themeMode.value = ThemeMode.dark;
    } else {
      _themeMode.value = ThemeMode.light;
    }
    update();
  }
}