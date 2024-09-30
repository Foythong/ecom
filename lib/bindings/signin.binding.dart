import 'package:get/get.dart';
import 'package:t_store/features/authentication/index.dart';

class SignInBindings implements Bindings {
  SignInBindings();

  @override
  void dependencies() {
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
  }
}
