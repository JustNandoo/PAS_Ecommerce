import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/component/myButton.dart';
import 'package:flutter_ecommerce/model/AllProductResponseModel.dart';
import 'package:get/get.dart';

class BageController extends GetxController {
  RxList<PruductResponseModel> responeBag = <PruductResponseModel>[].obs;
  RxBool isRefresh = false.obs;

  void addBag(BuildContext context, PruductResponseModel itemBag) {
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

  void removeFromBag(BuildContext context, int id, String name) {
    responeBag.removeWhere((item) => item.id == id);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$name telah dihapus dari keranjang.'),
        duration: Duration(seconds: 2),
      ),
    );

    // Trigger a change by assigning a new list instance
    responeBag = responeBag.toList().obs;
  }

  void checkout(BuildContext context, String selectedPayment) {
    if (responeBag.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Cart is empty. Add items to proceed.'),
          duration: const Duration(seconds: 2),
        ),
      );
      return;
    }

    if (selectedPayment.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please select a payment method.'),
          duration: const Duration(seconds: 2),
        ),
      );
      return;
    }

    // Perform payment logic here

    // Show a confirmation dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Transaction Complete'),
          content: Text('Thank you for your purchase!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Clear the cart after successful purchase
                responeBag.clear();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
}
