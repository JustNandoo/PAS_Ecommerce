import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Pages/bag_page/bage_controller.dart';
import 'package:flutter_ecommerce/component/bags.dart';
import 'package:flutter_ecommerce/component/myButton.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class BagPage extends StatelessWidget {

  BagPage({super.key});

  final BageController controller = BageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 80,),
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myText("My Bag",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                Container(
                  height: size.height*0.5,
                  width: size.width,

                  child: Obx(()=> controller.isRefresh == true ?
                  ListView.builder(
                    itemCount: controller.responeBag.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return BagItem(item: controller.responeBag.value[index]);
                    },
                  ) :
                  ListView.builder(
                    itemCount: controller.responeBag.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return BagItem(item: controller.responeBag.value[index]);
                    },
                  ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
