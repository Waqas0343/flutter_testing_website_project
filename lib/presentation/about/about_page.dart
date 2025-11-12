import 'package:flutter/material.dart';
import '../widgets/header.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Us',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Welcome to Flutter Web E-Commerce! We are committed to providing high-quality products and an excellent shopping experience. Our mission is to make shopping seamless and enjoyable for everyone.',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Our Team',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Our team consists of experienced developers, designers, and product managers who are passionate about delivering the best web experience.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
