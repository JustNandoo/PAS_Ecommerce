  import 'package:flutter_ecommerce/Pages/bag_page/bage_controller.dart';
  import 'package:get/get.dart';

  class BagBinding extends Bindings{
    @override
    void dependencies(){
      Get.put(BageController());
    }
  }