
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dashboard.dart';
import 'Loginpage.dart';


class RegisterScreen extends StatelessWidget {
  const new({
    super.key,
    required this.email,
    required this.name,
    required this.password,
    required this.showPassword,
    required this.confirmpassword,
  });

  final TextEditingController email;
  final TextEditingController name;
  final TextEditingController password;
  final bool showPassword;
  final TextEditingController confirmpassword;

  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
         Colors.blue, Colors.white, 
       ]
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Create Account', 
           style:TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 40,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
          controller: email,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.person),
            hintText: "Enter Email",
          ),
         ),
         SizedBox(
            height: 20,
          ),
         TextField(
          controller: name,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.person),
            hintText: "Full Name",
          ),
         ),
         SizedBox(
            height: 20,
          ), 
          TextField(
            controller: password,
            obscureText: showPassword,
            decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.password),
            hintText: "Enter your password",
          ),
         ),
         SizedBox(
            height: 20,
          ), 
          TextField(
            controller: confirmpassword,
            decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            filled: true,
            fillColor: Colors.white,
            prefixIcon: Icon(Icons.confirmation_num),
            hintText: "Enter confirms password",
          ),
         ),
         SizedBox(
            height: 20,
          ), 
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: LinearGradient(colors:[
               Colors.white, Colors.green ,
              ]
              )
            ),
            child: ElevatedButton(
              onPressed: (){
                Get.to(dashboard(
                  name: name.text,
                  email: email.text,
                ));
                //print('hello');
                //print(name.text);
                //print(email.text);
                //print(password.text);
                //print(confirmpassword.text);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
               child: Text('Register')),
            ),
            GestureDetector(
              onTap:(){
                Get.to(Loginpage());
              } ,
              child: Text("Already Has Account? Login",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}  