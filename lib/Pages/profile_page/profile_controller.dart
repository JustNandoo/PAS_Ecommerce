import 'package:flutter_ecommerce/common/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  late final SharedPreferences prefs;
  RxString username = "".obs;

  void getUser() {
    username.value = prefs.getString("username") ?? "";
  }

  setPreference() async {
    prefs = await SharedPreferences.getInstance();
    getUser();
  }

  @override
  void onInit() {
    
    super.onInit();
    setPreference();
  }

  void logout() {
    prefs.clear();
    Get.offAllNamed(RouteName.login);
  }
}
