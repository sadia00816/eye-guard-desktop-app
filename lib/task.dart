import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
 runApp( MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("BS"),
          backgroundColor: Colors.blue,
        ),
      body: Container(
        child: Text("show Store"),
         
      ) ,
      )
    );
  }
}