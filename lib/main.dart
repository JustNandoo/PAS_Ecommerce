import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Pages/Navigation.dart';
import 'package:flutter_ecommerce/Pages/bag_page/BagPage.dart';
import 'package:flutter_ecommerce/Pages/profile_page/ProfilePage.dart';
import 'package:flutter_ecommerce/Pages/shoping_page/ShoppingPage.dart';
import 'package:flutter_ecommerce/Pages/home_page/HomePage.dart';
import 'package:flutter_ecommerce/Pages/detail_page/DetailPage.dart';
import 'package:flutter_ecommerce/Pages/test.dart';
import 'package:flutter_ecommerce/asset/color.dart';
import 'package:flutter_ecommerce/component/MenProduct.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
      AnimatedSplashScreen(
        splashIconSize: 150,
        splash: Image.asset('img/singen.png'),
        duration: 3000,
        splashTransition:SplashTransition.fadeTransition ,
        backgroundColor: ColorValue.orange,
        nextScreen: Navigation(),
      ),
      getPages: [
        GetPage(name: '/home', page: () => HomePage()),
        GetPage(name: '/shop', page: () => ShoppingPage()),
        GetPage(name: '/bag', page: () => BagPage()),
        GetPage(name: '/profile', page: () => ProfilePage()),
        GetPage(name: '/navigation', page: () => Navigator()),
      ],
    );
  }
}


