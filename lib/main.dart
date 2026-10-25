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
      Row(
      children: [
        Expanded(
          child:Container(
            height:250,
            color: Colors.red,
        ),
      ),
        Expanded(
          child:Container(
             height: 250,
            color: Colors.purple,
        ),
      ),
       Expanded(
          child:Container(
             height: 250,
            color: const Color.fromARGB(255, 54, 158, 244),
        ),
      ),
        Expanded(
          child:Container(
             height: 250,
             color: const Color.fromARGB(255, 39, 176, 112),
        ),

      )
    ]
     ),
   
     Row(
      children: [
        Expanded(
          child:Container(
             height: 250,
            color: const Color.fromARGB(255, 73, 66, 66),
        ),
      ),
        Expanded(
          child:Container(
            height: 250,
            color: const Color.fromARGB(255, 18, 13, 19),
        ),
      ),
       Expanded(
          child:Container(
            height: 250,
            color: const Color.fromARGB(255, 70, 244, 54),
        ),
      ),
        Expanded(
          child:Container(
             height: 250,
             color: const Color.fromARGB(255, 241, 237, 5),
        ),
      )
    ], 
    ),
    ],
    ),
   ),
  );
}
}