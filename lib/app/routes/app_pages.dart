import 'package:get/get.dart';
import '../../presentation/home/home_page.dart';
import '../../presentation/about/about_page.dart';
import '../../presentation/products/product_page.dart';
import '../../presentation/contact/contact_page.dart';

class AppPages {
  static const HOME = '/';
  static const ABOUT = '/about';
  static const PRODUCTS = '/products';
  static const CONTACT = '/contact';

  static final pages = [
    GetPage(name: HOME, page: () => HomePage()),
    GetPage(name: ABOUT, page: () => AboutPage()),
    GetPage(name: PRODUCTS, page: () => ProductPage()),
    GetPage(name: CONTACT, page: () => ContactPage()),
  ];
}
