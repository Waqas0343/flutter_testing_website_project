import 'package:get/get.dart';
import '../../presentation/home/home_page.dart';
import '../../presentation/about/about_page.dart';
import '../../presentation/products/product_page.dart';
import '../../presentation/contact/contact_page.dart';

class AppPages {
  static const home = '/';
  static const about = '/about';
  static const products = '/products';
  static const contact = '/contact';

  static final pages = [
    GetPage(name: home, page: () => HomePage()),
    GetPage(name: about, page: () => AboutPage()),
    GetPage(name: products, page: () => ProductPage()),
    GetPage(name: contact, page: () => ContactPage()),
  ];
}
