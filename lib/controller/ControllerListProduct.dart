// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
//
// import '../model/MenResponseModel.dart';
//
// class ControllerListProduct extends GetxController {
//   RxList<PruductResponseModel> pruductResponseModelCtr = <PruductResponseModel>[].obs;
//
//   @override
//   void onInit(){
//     super.onInit();
//     loadData();
//   }
//
//   loadData() async {
//     try {
//       final response = await http.get(Uri.parse(
//           "https://fakestoreapi.com/products/category/men's clothing"));
//
//       if (response.statusCode == 200) {
//         pruductResponseModelCtr.value =
//             pruductResponseModelFromJson(response.body);
//       } else {
//         print("staus code : " + response.statusCode.toString());
//       }
//     } catch (e) {
//       print("error : " + e.toString());
//     }
//   }
// }
