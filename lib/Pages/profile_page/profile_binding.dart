import 'package:flutter_ecommerce/pages/profile_page/profile_controller.dart';
import 'package:flutter_ecommerce/pages/register_page/signup_controller.dart';
import 'package:get/get.dart';


class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProfileController());
  }
}
