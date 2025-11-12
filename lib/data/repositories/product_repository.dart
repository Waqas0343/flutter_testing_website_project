import '../models/product_model.dart';

class ProductRepository {
  static List<ProductModel> getAllProducts() {
    return [
      ProductModel(
        id: '1',
        name: 'Flutter T-Shirt',
        image: 'https://via.placeholder.com/150',
        price: 25.0,
        description: 'High-quality cotton t-shirt',
      ),
      ProductModel(
        id: '2',
        name: 'Flutter Mug',
        image: 'https://via.placeholder.com/150',
        price: 15.0,
        description: 'Ceramic coffee mug',
      ),
    ];
  }
}
