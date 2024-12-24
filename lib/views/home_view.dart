import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/theme_controller.dart';
import 'widgets/nawaf_button.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeController = Get.find<ThemeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Dark & Light Mode'),
      ),
      body: Center(
        child: NawafButton(
          onPressed: themeController.toggleTheme,
          label: "Toggle Theme",
        ),
      ),
    );
  }
}