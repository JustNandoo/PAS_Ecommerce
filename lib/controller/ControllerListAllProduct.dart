import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../model/MenResponseModel.dart';

class ControllerListAllProduct extends GetxController {
  RxList<PruductResponseModel> AllpruductResponseModelCtr = <PruductResponseModel>[].obs;

  @override
  void onInit(){
    super.onInit();
    loadData();
  }

  loadData() async {
    try {
      final response = await http.get(Uri.parse(
          "https://fakestoreapi.com/products/"));

      if (response.statusCode == 200) {
        AllpruductResponseModelCtr.value =
            pruductResponseModelFromJson(response.body);
      } else {
        print("staus code : " + response.statusCode.toString());
      }
    } catch (e) {
      print("error : " + e.toString());
    }
  }
}
