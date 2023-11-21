
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/Pages/bag_page/BagPage.dart';
import 'package:flutter_ecommerce/Pages/home_page/HomePage.dart';
import 'package:flutter_ecommerce/Pages/login_page/login.dart';
import 'package:flutter_ecommerce/Pages/profile_page/ProfilePage.dart';
import 'package:flutter_ecommerce/Pages/register_page/signup.dart';
import 'package:flutter_ecommerce/Pages/shoping_page/ShoppingPage.dart';
import 'package:flutter_ecommerce/asset/color.dart';
import 'package:flutter_ecommerce/controller/NavigationController.dart';
import 'package:get/get.dart';

class Navigation extends StatelessWidget {
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle =
  TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: SizedBox(
          height: 54,
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: landingPageController.changeTabIndex,
            currentIndex: landingPageController.tabIndex.value,
            backgroundColor: Colors.white,
            unselectedItemColor: ColorValue.grey.withOpacity(0.5),
            selectedItemColor: ColorValue.orange,
            unselectedLabelStyle: unselectedLabelStyle,
            selectedLabelStyle: selectedLabelStyle,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  child: Icon(
                    Icons.home,
                    size: 25.0,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    size: 25.0,
                  ),
                ),
                label: 'Shope',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  child: Icon(
                    Icons.shopping_bag_outlined,
                    size: 25.0,
                  ),
                ),
                label: 'Bag',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  child: Icon(
                    Icons.person_2_outlined,
                    size: 25.0,
                  ),
                ),
                label: 'Profile',
              ),
            ],
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    final NavigationController landingPageController =
    Get.put(NavigationController(), permanent: false);
    return SafeArea(
        child: Scaffold(
          bottomNavigationBar:
          buildBottomNavigationMenu(context, landingPageController),
          body: Obx(() => IndexedStack(
            index: landingPageController.tabIndex.value,
            children: [
              // LoginPage(),
              // SignUpPage(),
              HomePage(),
              ShoppingPage(),
              BagPage(),
              ProfilePage(),
            ],
          )),
        ));
  }
}