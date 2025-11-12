import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/header.dart';
import '../widgets/footer.dart';
import '../products/product_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 50),
            Text('Welcome to Flutter Web E-Commerce', style: TextStyle(fontSize: 32)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.toNamed('/products'),
              child: Text('View Products'),
            ),
            SizedBox(height: 100),
            Footer(),
          ],
        ),
      ),
    );
  }
}
