import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/asset/color.dart';
import 'package:flutter_ecommerce/component/myButton.dart';

class profiles extends StatelessWidget {
  final String username;

  const profiles({
    super.key,
    required this.username
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      height: 700,
      width: 20,
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          ListTile(
            title: myText(username,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            subtitle: myText("JusNando@gmail.com",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorValue.grey)),
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("img/fut.jpg"),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          ListTile(
            title: myText("My orders",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            subtitle: myText("Already have 12 orders",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorValue.grey)),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              print('ontap');
            },
          ),
          Expanded(
            child: Divider(
              thickness: 0.5,
            ),
          ),
          ListTile(
            title: myText("Shipping address",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            subtitle: myText("3 dresses",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorValue.grey)),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              print('ontap');
            },
          ),
          Expanded(
            child: Divider(
              thickness: 0.5,
            ),
          ),
          ListTile(
            title: myText("Payment methods",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            subtitle: myText("Visa **45",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorValue.grey)),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              print('ontap');
            },
          ),
          Expanded(
            child: Divider(
              thickness: 0.5,
            ),
          ),
          ListTile(
            title: myText("My Reviews",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            subtitle: myText("Review for 4 items",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorValue.grey)),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              print('ontap');
            },
          ),
          Expanded(
            child: Divider(
              thickness: 0.5,
            ),
          ),
          ListTile(
            title: myText("Settings",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            subtitle: myText("Notification, password",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorValue.grey)),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              print('ontap');
            },
          ),
        ],
      ),
    );
  }
}
