import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/model/AllProductResponseModel.dart';

import 'myButton.dart';

class BagItem extends StatelessWidget {
  final PruductResponseModel item;
  BagItem({Key? key, required this.item});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height*0.2,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black))
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 1500,
              height: 150,
              foregroundDecoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(item.image))
              ),
            ),
            Column(
              children: [
                myText(item.title),
                myText(item.price.toString()),
              ],
            )
          ],
        ),
      ),
    );
  }
}

