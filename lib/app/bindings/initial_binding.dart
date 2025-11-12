import 'package:get/get.dart';

import '../../presentation/products/controller/product_page_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {

    Get.lazyPut<ProductPageController>(() => ProductPageController());
  }
}
