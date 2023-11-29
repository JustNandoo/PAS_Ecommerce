  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_svg/svg.dart';
  import 'package:get/get.dart';
  import 'package:get/get_core/src/get_main.dart';

  import '../controller/ControllerListProduct.dart';

  Widget myButtons(String label, double wid, double heig, double radius) {
    return ElevatedButton(
      onPressed: () {},
      child: Container(
        alignment: Alignment.center,
        width: wid,
        height: heig,
        child: Text(label, style: TextStyle(color: Colors.white,)),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xffDB3022)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        )),
      ),
    );
  }

  Widget myText(String text,
      {TextStyle? style, TextAlign? textAlign, Color? color}) {
    return Text(
      text,
      style: style?.copyWith(color: color),
      textAlign: textAlign,
    );
  }

  Widget mycont(){



    return  Container(
    margin: EdgeInsets.only(bottom: 5,top: 10),
    height: 130,
    width: 380,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,  // Warna bayangan
        blurRadius: 5.0,    // Radius blur bayangan
        offset: Offset(0, 2),  // Posisi bayang
      )
    ],
    color: Color(0xffDB3022),
    ),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    myText("SUMMER SALES",style:  TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.white)),
    myText("Up to 50% off",style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.white)),
    ],
    ),

    );}