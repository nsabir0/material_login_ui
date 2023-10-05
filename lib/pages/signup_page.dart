// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Signup Page'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Text('SIGNUP',
                  style:
                      TextStyle(fontSize: 35, color: Colors.lightBlueAccent)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      hintText: 'Enter Your Full Name',
                      prefixIcon: Icon(Icons.person_outline_rounded),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter Your Email',
                      prefixIcon: Icon(Icons.email_rounded),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter Your Password',
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Confirm Paswword',
                      hintText: 'Enter Confirm Password',
                      prefixIcon: Icon(Icons.lock_outline_rounded),
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    child: Text('Signup',
                        style: TextStyle(fontSize: 20, color: Colors.white)),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
