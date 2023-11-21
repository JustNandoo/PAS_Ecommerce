import 'package:http/http.dart' as http;
import 'package:flutter_ecommerce/model/AllProductResponseModel.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  RxList<PruductResponseModel> productRespone = <PruductResponseModel>[].obs;
  RxList<PruductResponseModel> productResponeAll = <PruductResponseModel>[].obs;
  @override
  void onInit(){
    super.onInit();
    loadDataMens();
    loadDataAll();
  }

  loadDataMens() async {
    try {
        final response = await http.get(Uri.parse("https://fakestoreapi.com/products/category/men's clothing"));

      if (response.statusCode == 200) {
        productRespone.value = pruductResponseModelFromJson(response.body);
      } else {
        print("staus code : " + response.statusCode.toString());
      }
    } catch (e) {
      print("error : " + e.toString());
    }
  }

  loadDataAll() async {
    try {
      final response = await http.get(Uri.parse(
          "https://fakestoreapi.com/products/"));

      if (response.statusCode == 200) {
        productResponeAll.value = pruductResponseModelFromJson(response.body);
      } else {
        print("staus code : " + response.statusCode.toString());
      }
    } catch (e) {
      print("error : " + e.toString());
    }
  }
}
