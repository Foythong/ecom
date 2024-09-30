import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailController extends GetxController {
  late ScrollController scrollController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    scrollController = ScrollController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    scrollController.dispose();
  }
}
