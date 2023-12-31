import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Pages/bag_page/bage_controller.dart';
import 'package:flutter_ecommerce/component/bags.dart';
import 'package:flutter_ecommerce/component/checkout.dart';
import 'package:flutter_ecommerce/component/empty.dart';
import 'package:flutter_ecommerce/component/myButton.dart';
import 'package:flutter_ecommerce/pages/Navigation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class BagPage extends StatelessWidget {
  final int currentIndex = 2;
  BagPage({super.key});

  final BageController controller = Get.put(BageController());

  Widget bagItemList(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myText("Your Cart",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: size.height * 0.9,
                  width: size.width * 1.1,
                  child: Obx(
                    () => controller.isRefresh == true
                        ? ListView.builder(
                            itemCount: controller.responeBag.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return BagItem(
                                  item: controller.responeBag[index]);
                            },
                          )
                        : ListView.builder(
                            itemCount: controller.responeBag.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return BagItem(
                                  item: controller.responeBag[index]);
                            },
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Obx(() => controller.responeBag.value.length == 0
          ? EmptyCart()
          : Stack(
              children: [
                bagItemList(context),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Checkout(),
                ),
              ],
            )),
      bottomNavigationBar: bottomNavbar(context, currentIndex),
    );
  }
}
