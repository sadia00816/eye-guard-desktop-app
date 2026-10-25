import 'package:flutter/material.dart';
import 'theme.dart';

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
      body: Center(
       child: SizedBox(
         width: 200,
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder()
            ),
           ),
           TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height:20),
           ElevatedButton(
            onPressed: (){},
            child: Text('Login')
          )
       ],
     )      
    )
    )
    ),
  );
 }
}