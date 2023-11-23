import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/common/components/my_button.dart';
import 'package:flutter_ecommerce/common/components/my_textfield.dart';
import 'package:flutter_ecommerce/common/components/square_tile.dart';
import 'package:flutter_ecommerce/pages/login_page/login_controller.dart';
import 'package:flutter_ecommerce/pages/register_page/signup_controller.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key});

  final signupController = Get.put(SignupController());
  final TextEditingController ctrUsername = TextEditingController();
  final TextEditingController ctrPassword = TextEditingController();
  final TextEditingController ctrConfirmPass = TextEditingController();
  final TextEditingController ctrEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  MyTextField(
                    controller: ctrUsername,
                    hintText: 'Username',
                    obscureText: false,
                  ),
                  SizedBox(height: 15),
                  MyTextField(
                    controller: ctrEmail,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                  SizedBox(height: 15),
                  MyTextField(
                    controller: ctrPassword,
                    hintText: 'Password',
                    obscureText: false,
                  ),
                  SizedBox(height: 15),
                  MyTextField(
                    controller: ctrConfirmPass,
                    hintText: 'Confirm Password',
                    obscureText: false,
                  ),
                  SizedBox(height: 20),
                  MyButton(
                    onTap: () => signupController.SignUpAction(
                      ctrUsername.text,
                      ctrEmail.text,
                      ctrPassword.text,
                      ctrConfirmPass.text,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SquareTile(imagePath: 'lib/images/google.png'),
                      SizedBox(width: 25),
                      SquareTile(imagePath: 'lib/images/facebook.png'),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: () => Get.toNamed("/login"),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
