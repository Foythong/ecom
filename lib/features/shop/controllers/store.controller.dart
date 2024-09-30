import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreController extends GetxController {
  final RxString store = 'store'.obs;

  final List<Widget> tabs = const [
    Text('sports'),
    Text('Furniture'),
    Text('Electronincs'),
    Text('Clothes'),
    Text('Consmetics'),
  ];
}
