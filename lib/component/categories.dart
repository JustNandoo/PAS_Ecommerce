import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/component/myButton.dart';

class Categori extends StatefulWidget {
  const Categori({super.key});

  @override
  State<Categori> createState() => _CategoriState();
}

class _CategoriState extends State<Categori> {
  final List<Map<String, dynamic>> items = [
    {'text': 'New', 'image': 'img/fsd.jpg'},
    {'text': 'Clothes', 'image': 'img/fsd1.png'},
    {'text': 'Shoes', 'image': 'img/sh.jpg'},
    {'text': 'Accesories', 'image': 'img/ac.png'},





  ];
  // @override
  // Widget build(BuildContext context) {
  //   return List.generate(items.length, (index) => Text(items[]));
  // }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(items.length, (index)   {
        return Container(
            margin: EdgeInsets.all(7),
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow:[
                BoxShadow(
                  color: Colors.grey,  // Warna bayangan
                  blurRadius: 5.0,    // Radius blur bayangan
                  offset: Offset(0, 2),  // Posisi bayangan (horizontal, vertical)
                )
              ] ,
              color: Colors.white,
            ),

            child:Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.all(3)),
                    Text(items[index]['text'],style: TextStyle(fontSize: 17 ,fontWeight: FontWeight.bold),),
                    Container(
                      width: 150,
                      height: 120,
                      foregroundDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(items[index]['image']),fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ],
            )
        );
      }),
    );
  }
}

