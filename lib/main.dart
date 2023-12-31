import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/routes/route_name.dart';
import 'package:flutter_ecommerce/common/routes/routes.dart';

import 'package:flutter_ecommerce/pages/login_page/login.dart';
import 'package:flutter_ecommerce/pages/register_page/signup.dart';

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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 253, 0, 0)),
        useMaterial3: true,
      ),
      initialRoute: RouteName.splash,
      getPages: pageRoutes,
    );
  }
}
