import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Pages/detail_page/DetailPage.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../model/AllProductResponseModel.dart';
import 'myButton.dart';


Widget homeBajuListItem(
    BuildContext context, PruductResponseModel item, ) {
  final size = MediaQuery.of(context).size;

  return GestureDetector(
    onTap: () => Get.to(DetailPage(item: item)),
    child: Container(
      height: size.height*0.3,
      width: size.width*0.5,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 250,
                  height: 120,
                  foregroundDecoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(item.image))
                  ),
                ),
                Positioned(child: Container(width: 60, height: 30,decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),child: Center(child: myText("New", style: TextStyle(color: Colors.white))),))
              ],
            ),
            SizedBox(height: size.height*0.02,),
            Row(
              children: [
                Icon(Icons.star,color: Colors.yellow,),
                Text(item.rating.rate.toString()),
              ],
            ),
            SizedBox(height: size.height*0.005,),
            Text(item.title, style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
            SizedBox(height: size.height*0.005,),
            Text("\$${item.price}", style: TextStyle(fontSize: 14),)


          ],
        ),
      ),
    ),
  );
}

Widget homeBajuList(List<PruductResponseModel> itemList) {
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      childAspectRatio: 1 / 1.3,
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10),
    itemCount: itemList.length,
    itemBuilder: (context, index) {
      return homeBajuListItem(context, itemList[index]);
    },
  );
}