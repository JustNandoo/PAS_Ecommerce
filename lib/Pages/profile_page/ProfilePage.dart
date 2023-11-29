import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/component/myButton.dart';
import 'package:flutter_ecommerce/component/profile.dart';
import 'package:flutter_ecommerce/pages/Navigation.dart';
import 'package:flutter_ecommerce/pages/profile_page/profile_controller.dart';
import 'package:get/get.dart'; // Import GetX package

class ProfilePage extends StatelessWidget {
  final profileController = Get.put(ProfileController());
  final int currentIndex = 3;

  ProfilePage({Key? key}) : super(key: key);

  Future<void> showLogoutConfirmationDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Logout'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Are you sure you want to log out?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Log Out'),
              onPressed: () async {
                // Perform logout action here
                 profileController.logout();

                // Check if the context is still valid before popping
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Container(
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Show logout confirmation dialog
                  showLogoutConfirmationDialog(context);
                },
                child: Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  child: Icon(Icons.logout),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 25),
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
        ),
      ),
      bottomNavigationBar: bottomNavbar(context, currentIndex),
    );
  }
}
