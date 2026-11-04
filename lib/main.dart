import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'freshproject.dart/login_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final email = TextEditingController();
  final password = TextEditingController();

  String correctemail = 'sadi123@gmail.com';
  String correctpassword = '1234567890';

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text("log in page"),
          centerTitle: true,
        ),
        body: Login_1(email: email, password: password, correctemail: correctemail, correctpassword: correctpassword),
      ),
    );
  }
}

