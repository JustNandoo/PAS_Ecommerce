import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/model/AllProductResponseModel.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Pages/bag_page/bage_controller.dart';
import 'myButton.dart';

class BagItem extends StatelessWidget {
  final PruductResponseModel item;
  RxInt counter = 0.obs;
  BageController controller = Get.put(BageController());
  BagItem({Key? key, required this.item});

  void add() {
    counter++;
  }

  void remove() {
    if (counter > 0) {
      counter--;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.all(7),
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey, // Warna bayangan
              blurRadius: 5.0, // Radius blur bayangan
              offset: Offset(0, 2), // Posisi bayangan (horizontal, vertical)
            )
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Padding(padding: EdgeInsets.all(3)),
                Container(
                  margin: EdgeInsets.all(6),
                  height: 100,
                  width: 100,
                  foregroundDecoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(item.image))),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 230,
                        child: myText(
                          item.title,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      myText("\$${item.price}",
                          style: TextStyle(
                            fontSize: 13,
                          )),
                      ElevatedButton(
                          onPressed: () {
                            controller.removeFromBag(
                                context, item.id, item.title);
                          },
                          child: Icon(CupertinoIcons.delete)),
                      Obx(
                        () => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue,
                          ),
                            child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  add();
                                },
                                icon: Icon(
                                  CupertinoIcons.plus,size: 25,
                                )),
                            myText(counter.string),
                            IconButton(
                                onPressed: () {
                                  remove();
                                },
                                icon: Icon(CupertinoIcons.minus)),
                          ],
                        )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
