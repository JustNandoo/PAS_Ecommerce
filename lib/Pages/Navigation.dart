import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Pages/home_page/HomePage.dart';
import 'package:flutter_ecommerce/Pages/shoping_page/ShoppingPage.dart';
import 'package:flutter_ecommerce/common/routes/route_name.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

Widget bottomNavbar(BuildContext context, int currentIndex) {
  Size size = MediaQuery.of(context).size;
  return GNav(
    padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05, vertical: size.width * 0.06),
    color: const Color(0xFF959595),
    backgroundColor: Colors.white,
    activeColor: const Color(0xFFDB3022),
    gap: 4,
    iconSize: size.width * 0.08,
    selectedIndex: currentIndex,
    onTabChange: (index) {
      currentIndex = index;
      switch (index) {
        case 0:
          Get.off(HomePage());
          break;
          case 1:
          Get.off(ShoppingPage());
          break;
        case 2:
          Get.offNamed('/bag');
          break;
        case 3:
          Get.offNamed('/profile');
          break;
      }
    },
    tabs: const [
      GButton(icon: Icons.home_filled, text: "home"),
      GButton(icon: Icons.shopping_cart, text: "shop"),
      GButton(icon: Icons.shopping_bag, text: "bag"),
      GButton(icon: Icons.person_2, text: "profile"),
    ],
  );
}
