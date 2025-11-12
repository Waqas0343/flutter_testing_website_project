import 'package:flutter/material.dart';
import '../../data/models/product_model.dart';
import '../widgets/header.dart';
import 'package:get/get.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductModel product;

  const ProductDetailPage({super.key, required this.product});

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
                  Text(product.name, style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Image.network(product.image, height: 300),
                  SizedBox(height: 20),
                  Text('Price: \$${product.price}', style: TextStyle(fontSize: 24)),
                  SizedBox(height: 20),
                  Text(product.description, style: TextStyle(fontSize: 18)),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Get.snackbar('Success', 'Product Added to Cart', snackPosition: SnackPosition.BOTTOM);
                    },
                    child: Text('Buy Now'),
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
