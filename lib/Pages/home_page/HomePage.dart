import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Pages/Navigation.dart';
import 'package:flutter_ecommerce/Pages/home_page/home_controller.dart';
import 'package:flutter_ecommerce/component/Product.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

import '../../asset/color.dart';
import '../../component/MenProduct.dart';
import '../../component/myButton.dart';

class HomePage extends StatelessWidget {

  HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Obx(() => ListView(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/fas.jpg"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myText(
                    "Fashion \nSale",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  myButtons("check", 90, 40, 25),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myText(
                  "New",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                myText(
                  "You've never seen it before",
                  style: TextStyle(
                    color: ColorValue.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          homeBajuList(homeController.productRespone),
          SizedBox(height: size.height*0.02,),
          Container(
            padding: EdgeInsets.all(10),
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/super.png"),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                myText(
                  "Super Sale ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                myText(
                  "20% off",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          homeAllList(homeController.productResponeAll)
        ],
      ),)
    );
  }
}


