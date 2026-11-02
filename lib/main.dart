import 'package:eye_guard_desktop_app/chat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'RegisterScreen.dart';
import 'dashboard.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showPassword = true;
  final passwordController = TextEditingController();
  final name = TextEditingController();
  final email= TextEditingController();
  final password = TextEditingController();
  final confirmpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text('Whatsapp' , style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 27, 153, 2),
        ),
        body:RegisterScreen(email: email, name: name, password: password, showPassword: showPassword, confirmpassword: confirmpassword),
      ),
    );
  }
}
    