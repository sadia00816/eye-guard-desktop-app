
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("count"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child:Text('Counter: $counter'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          setState((){
            counter++;
          });
        },child: Icon(Icons.add),
        ),
      )
    );
  }
}