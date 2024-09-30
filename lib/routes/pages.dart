import 'package:get/get.dart';
import 'package:t_store/bindings/index.dart';
import 'package:t_store/features/personalization/index.dart';
import 'package:t_store/navigation_menu/navigation_menu.dart';

import '../features/authentication/index.dart';
import '../features/shop/index.dart';
import 'routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.INITIAL;
  static List<String> history = [];

  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.INITIAL,
      page: () => const OnBoardingScreen(),
      binding: OnBoardingBindings(),
    ),
    GetPage(
      name: AppRoutes.SIGNIN,
      page: () => const SignInScreen(),
      binding: SignInBindings(),
    ),
    //menu
    GetPage(
      name: AppRoutes.NAVIGATIION_MENU,
      page: () => const NavigationMenu(),
      binding: NavigationMenuBindings(),
    ),

    //home page
    GetPage(
      name: AppRoutes.HOME_SCREEN,
      page: () => const HomeScreen(),
      binding: NavigationMenuBindings(),
    ),

    //store page
    GetPage(
      name: AppRoutes.STORE_SCREEN,
      page: () => const NavigationMenu(),
      binding: NavigationMenuBindings(),
    ),

    GetPage(
      name: AppRoutes.PROFILE,
      page: () => const ProfileScreen(),
      binding: ProfileBindings(),
    ),

    GetPage(
      name: AppRoutes.PRODUCT_DETAIL,
      page: () => const ProductDetailScreen(),
      binding: ProductDetailBinding(),
    ),
  ];
}
