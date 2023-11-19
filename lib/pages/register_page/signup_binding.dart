import 'package:flutter_ecommerce/pages/register_page/signup_controller.dart';

import 'package:get/get.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SignupController());
  }
}