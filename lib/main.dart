import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/initial_binding.dart';
import 'controllers/theme_controller.dart';
import 'views/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBinding(),
      theme: Get.put (ThemeController()).lightTheme,
      darkTheme: Get.put (ThemeController()).darkTheme,
      themeMode: Get.put (ThemeController()).themeMode,
      home: HomeView(),
    );
  }
}