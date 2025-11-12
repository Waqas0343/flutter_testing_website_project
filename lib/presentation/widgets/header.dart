// header.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/routes/app_pages.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('E-Commerce', style: TextStyle(color: Colors.white, fontSize: 24)),
          Row(
            children: [
              TextButton(onPressed: () => Get.toNamed(AppPages.home), child: Text('Home', style: TextStyle(color: Colors.white))),
              TextButton(onPressed: () => Get.toNamed(AppPages.about), child: Text('About', style: TextStyle(color: Colors.white))),
              TextButton(onPressed: () => Get.toNamed(AppPages.products), child: Text('Products', style: TextStyle(color: Colors.white))),
              TextButton(onPressed: () => Get.toNamed(AppPages.contact), child: Text('Contact', style: TextStyle(color: Colors.white))),
            ],
          )
        ],
      ),
    );
  }
}


class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text('© 2025 Flutter Web E-Commerce'),
      ),
    );
  }
}
