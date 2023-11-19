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
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 64,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 50),
                  MyTextField(
                    controller: ctrUsername,
                    hintText: 'Username',
                    obscureText: false,
                  ),
                  SizedBox(height: 20),
                  MyTextField(
                    controller: ctrEmail,
                    hintText: 'Email',
                    obscureText: false,
                  ),
                  SizedBox(height: 20),
                  MyTextField(
                    controller: ctrPassword,
                    hintText: 'Password',
                    obscureText: false,
                  ),
                  SizedBox(height: 20),
                  MyTextField(
                    controller: ctrConfirmPass,
                    hintText: 'Confirm Password',
                    obscureText: false,
                  ),
                  SizedBox(height: 25),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot your Password?',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
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
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: SquareTile(imagePath: 'lib/images/google.png'),
                      ),
                      SizedBox(width: 25),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: SquareTile(imagePath: 'lib/images/facebook.png'),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontWeight: FontWeight.bold,
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
