import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/component/myButton.dart';
import 'package:flutter_ecommerce/component/profile.dart';
import 'package:flutter_ecommerce/pages/login_page/login.dart';
import 'package:flutter_ecommerce/pages/profile_page/profile_controller.dart';
import 'package:random_avatar/random_avatar.dart';
import 'package:get/get.dart'; // Import GetX package

class ProfilePage extends StatelessWidget {
  final profileController = Get.put(ProfileController());
  ProfilePage({Key? key});
  final currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // Navigate to the login page using GetX
              profileController.logout();
            },
            child: Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
              child: Icon(Icons.logout),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 20),
            child: myText("My Profile",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView(
              children: [
                profiles(username: profileController.username.value),
                // Add more ListTiles or other widgets as needed
              ],
            ),
          ),
        ],
      ),
      
    );
  }
}
