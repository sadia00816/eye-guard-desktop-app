
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Chathistory1.dart';

class Login_1 extends StatelessWidget {
  const new({
    super.key,
    required this.email,
    required this.password,
    required this.correctemail,
    required this.correctpassword,
  });

  final TextEditingController email;
  final TextEditingController password;
  final String correctemail;
  final String correctpassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.deepPurpleAccent],
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              TextField(
                controller: email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'enter your email',
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'enter your password',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  //print('hello');
                  if (email.text == correctemail &&
                      password.text == correctpassword) {
                    Get.snackbar('log success', 'correct log in details');
    
                    Get.to(Chathistory1());
                  } else {
                    Get.snackbar('log in failed', 'wrong log in details');
                  }
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}