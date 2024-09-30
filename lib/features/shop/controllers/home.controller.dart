import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt carouselCurrentIndex = 0.obs;

  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }
}
