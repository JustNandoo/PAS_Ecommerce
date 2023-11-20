import 'package:flutter/material.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListView(
          children: [
            Card(
              child: ListTile(
                title: Text("My orders"),
                subtitle: Text("Already have 12 orders"),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: (){print('ontap');},
              ),
            ) ,
            Card(
              child: ListTile(
                title: Text("Shipping address"),
                subtitle: Text("3 dresses"),
                trailing: Icon(Icons.arrow_forward_ios),

              ),
            ),
            Card(
              child: ListTile(
                title: Text("Payment methods"),
                subtitle: Text("Visa **45"),
                trailing: Icon(Icons.arrow_forward_ios),

              ),
            ),
            Card(
              child: ListTile(
                title: Text("My Reviews"),
                subtitle: Text("Review for 4 items"),
                trailing: Icon(Icons.arrow_forward_ios),

              ),
            ),
            Card(
              child: ListTile(
                title: Text("Settings"),
                subtitle: Text("Notification, password"),
                trailing: Icon(Icons.arrow_forward_ios),

              ),
            ),

          ],
        ),

      ],
    );
  }
}
