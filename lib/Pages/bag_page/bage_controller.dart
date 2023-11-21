import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/component/myButton.dart';
import 'package:flutter_ecommerce/model/AllProductResponseModel.dart';
import 'package:get/get.dart';

class BageController extends GetxController{
  RxList<PruductResponseModel> responeBag =  <PruductResponseModel>[].obs;
  RxBool isRefresh = false.obs;

  addBag(BuildContext context, PruductResponseModel itemBag) {
    bool addList = false;
    for (var item in responeBag.value) {
      if (item.id == itemBag.id) {
        addList = true;
        break;
      }
    }
    if (!addList) {
      responeBag.value.add(itemBag);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: myText("Item Add to Bag."),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: myText("Sudah ada."),
          duration: Duration(seconds: 2),
        ),
      );
    }
    print("add ${itemBag.title}");
    for (var item in responeBag.value) {
      print("old data : ${item.title}");
    }
  }

  removeFromBag(BuildContext context, int id, String name) {
    responeBag.value.removeWhere((item) => item.id == id);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$name telah dihapus dari keranjang.'),
        duration: Duration(seconds: 2),
      ),
    );

    isRefresh.value = !isRefresh.value;
  }
}