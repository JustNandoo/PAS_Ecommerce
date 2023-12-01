import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/component/myButton.dart';

class Categori extends StatefulWidget {
  const Categori({Key? key}) : super(key: key);

  @override
  State<Categori> createState() => _CategoriState();
}

class _CategoriState extends State<Categori> {
  final List<Map<String, dynamic>> items = [
    {'text': 'New', 'image': 'img/fsd.jpg'},
    {'text': 'Clothes', 'image': 'img/fsd1.png'},
    {'text': 'Shoes', 'image': 'img/sh.jpg'},
    {'text': 'Accessories', 'image': 'img/ac.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(items.length, (index) {
        return Container(
          margin: EdgeInsets.all(7),
          height: MediaQuery.of(context).size.width * 0.4, // Responsive height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 5.0,
                offset: Offset(0, 2),
              )
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.all(3)),
                  Text(
                    items[index]['text'],
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width *
                        0.4, // Responsive width
                    height: MediaQuery.of(context).size.width *
                        0.4, // Responsive height
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(items[index]['image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
