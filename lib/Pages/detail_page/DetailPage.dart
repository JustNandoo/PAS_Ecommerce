import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Pages/bag_page/bage_controller.dart';
import 'package:flutter_ecommerce/asset/color.dart';
import 'package:flutter_ecommerce/component/myButton.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import '../../controller/ControllerListProduct.dart';
import '../../model/AllProductResponseModel.dart';

class DetailPage extends StatelessWidget {
  final PruductResponseModel item;
  DetailPage({Key? key, required this.item});
  BageController controller = Get.put(BageController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: ListView(
          children: [
            Container(
              height: 450,
              width: double.infinity,
           foregroundDecoration: BoxDecoration(
             image: DecorationImage(image: NetworkImage(item.image))
           ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  width:size.width*0.4 ,

                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: DropdownButton<String>(
                    items: <String>['S', 'M', 'L', 'XL', 'XXL']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {},
                    hint: Text('Size'),
                  ),
                ),
                Container(
                  width:size.width*0.4 ,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: DropdownButton<String>(
                    items: <String>['Black', 'White', 'Red', 'Blue', 'Navy']
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {},
                    hint: Text('Color'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width:350,child: myText(item.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,))),
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.yellow,size: 25),
                      myText(item.rating.rate.toString(),style: TextStyle(fontSize: 15)),
                    ],
                  ),
                  SizedBox(height: 20,),
                  myText(item.description,style: TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 15))
                ],
              ),
            ),
            Spacer(),

          ],
        ),
        bottomNavigationBar:Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: ColorValue.grey,
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                )

              ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width:150,child: Center(child: Text("\$${item.price}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),))),
                  Expanded(
                    child: ElevatedButton(onPressed: (){
                      controller.addBag(context, item);
                    },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20,),
                            primary: ColorValue.orange
                        ),
                        child: myText("ADD TO CART",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold))),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
