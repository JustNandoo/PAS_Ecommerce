import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/pages/login_page/login_controller.dart';
import 'package:get/get.dart';


class User {
  final String username;
  final String token;

  User({required this.username, required this.token});
}

class HomePage extends StatelessWidget {
  final LoginController loginController = Get.find<LoginController>();

   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              loginController.isLoading.value = false;
              loginController.prefs.clear();
              Get.offAllNamed('/login');
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Obx(() {
          if (loginController.isLoading.value) {
            return CircularProgressIndicator();
          } else {
            if (loginController.prefs.getBool('isLogin') == true) {
              final user = User(
                username: "Username Placeholder", // Ganti dengan data sesuai kebutuhan
                token: loginController.prefs.getString('userToken') ?? "",
              );
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome, ${user.username}!'),
                  SizedBox(height: 20),
                  Text('Token: ${user.token}'),
                ],
              );
            } else {
              return Text('User is not logged in.');
            }
          }
        }),
      ),
    );
  }
}
