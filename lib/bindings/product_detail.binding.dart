import 'package:get/get.dart';

import '../features/shop/index.dart';

class ProductDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(ProductDetailController());
  }
}
