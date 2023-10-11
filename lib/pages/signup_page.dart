import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:material_login_ui/components/my_button.dart';
import 'package:material_login_ui/components/my_textfield.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  // text editing controllers
  final fullnameController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Center(
          child:
              //all childrens under this main column============================
              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),

              //Lock icon=======================================================
              const Icon(
                Icons.android,
                size: 100,
              ),

              //Welcome Text====================================================
              Text(
                'Ready to join the team?',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 15),

              //Fullname Textfield==============================================
              MyTextField(
                controller: fullnameController,
                hintText: 'Full Name',
                obscureText: false,
              ),

              const SizedBox(height: 10),

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

              //Confirm password textfield==============================================
              MyTextField(
                controller: passwordController,
                hintText: 'Confirm Password',
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
              MyButton(onPressed: signUserIn, buttonText: 'Sign Out'),

              const SizedBox(height: 45),

              //register text===================================================
              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text: 'Not a member?  ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                      text: 'Register Now',
                      style: const TextStyle(color: Colors.blue),
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
