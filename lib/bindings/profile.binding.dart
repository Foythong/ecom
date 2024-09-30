import 'package:get/get.dart';
import 'package:t_store/features/personalization/controllers/profile.controller.dart';

class ProfileBindings implements Bindings {
  ProfileBindings();

  @override
  void dependencies() {
    Get.put(ProfileController());
  }
}
