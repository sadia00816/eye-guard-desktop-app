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
  'komal','Arslan','komal', 'Rabia', 'Saba', 'Hadia','samia','Arooj','Aleeza','Amara','Adan','Iqra','Javeria','Hamna','Api','Bhai','komal',
 ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text('Whatsapp'),
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Here',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  )
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                      onTap: () {
                        print(index);

                        Get.to(ChatHistory(name:students[index],n: index),
                        //print(students[index]);
                        //Navigator.push(
                          //context,
                          //MaterialPageRoute(builder: (context) =>  ChatHistory(
                          // name: students[index],
                          // n: index,
                          //),
                          
                        );
                     },
                      leading: CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: Text(students[index]),
                      subtitle: Text('Hello how are you'),
                      trailing: Column(
                        children: [
                          Text("10:00 am"),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.green,
                            child: Text(
                              '1',
                              style: TextStyle(
                                color:Colors.white,
                                fontSize: 12,
                      
                              ),
                            ),
                          ),
                          //Divider(
                            //height: 1,
                            //thickness: 0.5,
                           // color: Colors.grey,
                          //),
                        ],
                      ),                                   
                    ),
                   ],
                  );
              
                 // return Text(students[index]);
                   //return Text('Hello');
               },
              ),
            ),
          ],
        ),
       floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.chat),),
     ),
   );
  }
}
    