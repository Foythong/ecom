import 'package:get/get.dart';
import 'package:t_store/features/shop/index.dart';
import 'package:t_store/navigation_menu/navigationmenu.controller.dart';

class NavigationMenuBindings implements Bindings {
  NavigationMenuBindings();

  @override
  void dependencies() {
    Get.put(NavigationMenuController());
    Get.put(HomeController());
    Get.put(StoreController());
    Get.put(WishlistController());
  }
}
