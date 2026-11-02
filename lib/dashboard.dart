import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  const dashboard({super.key, required this.name, required this.email});
  
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Text('Email: $email'),
            Text('Name: $name'),
            Text('Password'),
            Text('Hello'),
            ],
          ),
        ),
      ),
    );
  }
}