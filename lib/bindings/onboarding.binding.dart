import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/onboarding.controller.dart';

class OnBoardingBindings implements Bindings {
  OnBoardingBindings();

  @override
  void dependencies() {
    Get.lazyPut<OnBoardingController>(
      () => OnBoardingController(),
    );
  }
}
