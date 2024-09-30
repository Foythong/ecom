import 'package:get/get.dart';
import 'package:t_store/features/authentication/controllers/signup.controller.dart';
import 'package:t_store/features/authentication/index.dart';

class SignUpBindings implements Bindings {
  SignUpBindings();

  @override
  void dependencies() {
    Get.lazyPut<SignUpController>(
      () => SignUpController(),
    );
  }
}
