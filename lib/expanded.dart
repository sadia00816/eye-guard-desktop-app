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
          backgroundColor: Colors.blue,
          title: Text('MY APP'),
          ),
    body: Column(
      children: [
        Expanded(
          child: Row(
          children: [
            Expanded(
          child:Container(
            color: Colors.red,
        ),
      ),
        Expanded(
          child:Container(
            color: Colors.purple,
        ),
      ),
       Expanded(
          child:Container(
            color: const Color.fromARGB(255, 54, 158, 244),
        ),
      ),
        Expanded(
          child:Container(
             color: const Color.fromARGB(255, 39, 176, 112),
        ),
        ),
      ]
     )
    ),
    Expanded(
          child: Row(
          children: [
            Expanded(
          child:Container(
            color: Colors.red,
        ),
      ),
        Expanded(
          child:Container(
            color: Colors.purple,
        ),
      ),
       Expanded(
          child:Container(
            color: const Color.fromARGB(255, 54, 158, 244),
        ),
      ),
        Expanded(
          child:Container(
             color: const Color.fromARGB(255, 39, 176, 112),
        ),
        ),
        ],
     )
    )
    ]
    )
     ),
    );
}
}