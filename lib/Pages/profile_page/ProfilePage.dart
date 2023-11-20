import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/component/myButton.dart';
import 'package:flutter_ecommerce/component/profile.dart';
import 'package:random_avatar/random_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: Icon(Icons.logout),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 20),
            child: myText("My Profile",
                style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView(
              children: [
                profiles(), // Menambahkan widget Profiles ke dalam ListView
                // Tambahkan ListTiles atau widget lainnya sesuai kebutuhan
              ],
            ),
          ),
        ],
      ),
    );
  }
}
