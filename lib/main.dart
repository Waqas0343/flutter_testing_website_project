import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/bindings/initial_binding.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Flutter Web E-Commerce",
      theme: appTheme,
      initialBinding: InitialBinding(),
      initialRoute: AppPages.home,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
