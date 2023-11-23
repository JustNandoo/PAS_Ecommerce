import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/asset/color.dart';

import 'package:flutter_ecommerce/pages/home_page/HomePage.dart';
import 'package:flutter_ecommerce/pages/login_page/login.dart';
import 'package:flutter_ecommerce/pages/splash_screen/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  final SplashController splashController = Get.find<SplashController>();

  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splashIconSize: 150,
        splash: Image.asset('img/singen.png'),
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: ColorValue.orange,
        nextScreen: Obx(
          () =>
              splashController.isLogin.value == true ? HomePage() : LoginPage(),
        ),
      ),
    );
  }
}
