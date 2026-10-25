import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('MY APP'),
          ), 
      body: Container(
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
              Text('Welcome BS IT', 
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
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.email),
                hintText: "Enter your email",
              ),
             ),
             SizedBox(
                height: 20,
              ), 
              TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.password),
                hintText: "Enter your password",
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
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: (){}, child: Text('Login')),
              )
            ],
          ),
        ),
      ),
     ),
    );
  }
}