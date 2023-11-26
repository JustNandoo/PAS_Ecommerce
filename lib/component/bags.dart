import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/model/AllProductResponseModel.dart';
import 'package:get/get.dart';

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
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: NetworkImage(item.image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Padding(

              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      myText(
                        item.title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      myText(
                        "\$${item.price}",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              remove();
                            },
                            icon: Icon(
                              CupertinoIcons.minus_circle,
                              size: 30,
                              color: Colors.red,
                            ),
                          ),
                          myText(
                            counter.string,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              add();
                            },
                            icon: Icon(
                              CupertinoIcons.plus_circle,
                              size: 30,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          controller.removeFromBag(context, item.id, item.title);
                        },
                        icon: Icon(
                          CupertinoIcons.trash,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
