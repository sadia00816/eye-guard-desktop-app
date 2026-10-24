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
          backgroundColor: Colors.red,
          title: Text('My Desktop App'),
        ),
        body: Column(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
            Container(
              margin:EdgeInsets.all(10),
              color: const Color.fromARGB(255, 54, 33, 243),
              height: 100,
              width: 100,
            ),
            Container(
              margin:EdgeInsets.all(10),
              color: const Color.fromARGB(255, 244, 225, 54),
              height: 100,
              width: 100,
            ),
            Container(
              margin:EdgeInsets.all(10),
              color: const Color.fromARGB(255, 29, 172, 0),
              height: 100,
              width: 100,
            ),
            Container(
              margin:EdgeInsets.all(10),
              color: const Color.fromARGB(166, 221, 5, 174),
              height: 100,
              width: 100,
            ),
          ],
        ),
        Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
            Container(
              margin:EdgeInsets.all(10),
              color: const Color.fromARGB(255, 54, 33, 243),
              height: 100,
              width: 100,
            ),
            Container(
              margin:EdgeInsets.all(10),
              color: const Color.fromARGB(255, 244, 225, 54),
              height: 100,
              width: 100,
            ),
            Container(
              margin:EdgeInsets.all(10),
              color: const Color.fromARGB(255, 29, 172, 0),
              height: 100,
              width: 100,
            ),
            Container(
              margin:EdgeInsets.all(10),
              color: const Color.fromARGB(166, 221, 5, 174),
              height: 100,
              width: 100,
            ),
          ],
        ),
        ]
      ),
    ),
  );
  }
}