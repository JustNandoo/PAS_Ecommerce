import 'package:flutter_ecommerce/Pages/home_page/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies(){
    Get.put(HomeController());
  }
}