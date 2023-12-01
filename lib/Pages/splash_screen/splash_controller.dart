import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  late final SharedPreferences prefs;
  RxBool isLogin = false.obs;

  void onInit() {
    super.onInit();
    checkSessionLogin();
  }

  void checkSessionLogin() async {
    prefs = await SharedPreferences.getInstance();
    String username = prefs.getString("username") ?? "";

    if (username.isNotEmpty) {
      isLogin.value = true;
    }
  }
}
