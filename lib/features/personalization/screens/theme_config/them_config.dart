import 'package:e_commerce/features/personalization/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeConfig extends StatelessWidget {
  ThemeConfig({super.key});

  final ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chọn màu nền giao diện'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                themeController.setTheme(false);
              },
              child: const Text('Light Theme'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                themeController.setTheme(true);
              },
              child: const Text('Dark Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
