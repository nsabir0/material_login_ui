// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:material_login_ui/components/my_button.dart';
import 'package:material_login_ui/components/my_textfield.dart';
import 'package:material_login_ui/components/square_tile.dart';
import 'package:material_login_ui/pages/signup_page.dart';
import 'package:flutter/gestures.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:

          //For Scrolling=======================================================
          SingleChildScrollView(
        child: Center(
          child:

              //all childrens under this main column============================
              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              //Lock icon=======================================================
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              //Welcome Text====================================================
              Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              //username Textfield==============================================
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              //password textfield==============================================
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //forgot password=================================================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //signin button===================================================
              MyButton(
                onPressed: signUserIn,
                buttonText: 'Sign In',
              ),

              const SizedBox(height: 45),

              //OR devider===============================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[500],
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
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 45),

              //two buttons=====================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTile(imagePath: 'lib/images/google.png'),
                  SizedBox(width: 25),
                  SquareTile(imagePath: 'lib/images/apple.png')
                ],
              ),

              const SizedBox(height: 45),

              //register text===================================================
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Not a member?  ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                      text: 'Register Now',
                      style: TextStyle(color: Colors.blue),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Signup()),
                          );
                        }),
                ]),
              ),

              const SizedBox(height: 45),
            ],
          ),
        ),
      ),
    );
  }
}
