 import 'package:eye_guard_desktop_app/chat.dart';
import 'package:flutter/material.dart';
 import 'package:get/get.dart';

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

  List<String> students = [
    'komal','Arslan','Nafees', 'Rabia', 'Saba', 'Hadia','samia','Arooj',
    'Aleeza','Amara','Adan','Iqra','Javeria','Hamna','Api','Bhai','komal',
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text('Whatsapp' , style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 27, 153, 2),
        ),
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search Here",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
              ),
            ),
            Row(
              children: [
                TextButton(onPressed: (){}, child: Text('Unread')),
                TextButton(onPressed: (){}, child: Text('All')),
                TextButton(onPressed: (){}, child: Text('Groups')),
                TextButton(onPressed: (){}, child: Text('Favourites')),
                TextButton(onPressed: (){}, child: Text('Communities')),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index){
                  return ListTile(
                    onTap:(){
                      print("index");
                      Get.to(ChatHistory(name: students[index], n: index),);
                    },
                        title: Text(students[index],),
                        leading: CircleAvatar(
                          child: Icon(Icons.person),
                        ),
                        subtitle: Text("Hello buddy"),
                        trailing: Column(
                          children: [
                            Text("10:00 am"),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.green,
                              child: Text(
                               "1",
                               style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                               ),),
                            )
                          ],
                        ),
                      );
                }
              ),
            ),
          ],
        ), 
        floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.message),),
      ),
    );
  }
}
    