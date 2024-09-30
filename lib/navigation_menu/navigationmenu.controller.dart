import 'package:get/get.dart';
import 'package:t_store/features/personalization/views/setting/setting.screen.dart';
import 'package:t_store/features/shop/index.dart';

class NavigationMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screens = const [
    HomeScreen(),
    StoreScreen(),
    WishListScreen(),
    SettingScreen()
  ];
}
