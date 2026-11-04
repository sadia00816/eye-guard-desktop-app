import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Chathistory1 extends StatefulWidget {
  const Chathistory1({super.key});

  @override
  State<Chathistory1> createState() => _Chathistory1State();
}

class _Chathistory1State extends State<Chathistory1> {
  List<String> students = [
    'Ammara',
    'kinza',
    'Raina',
    'Sammar Ali',
    'Meesam Ali',
    'Rukh e Fatima',
    'Ahmad',
    'Huzaifa',
    'Hariem',
    'sadia',
    'boy group',
    'fahad',
    'saad',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Chats'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'serach here',
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Row(
            children: [
              TextButton(onPressed: () {}, child: Text('all')),
              TextButton(onPressed: () {}, child: Text('unread')),
              TextButton(onPressed: () {}, child: Text('fav')),
              TextButton(onPressed: () {}, child: Text('groups')),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    ListTile(
                      onTap: () {
                        print(index);
                        print(students[index]);
                        Get.to((name: students[index], n: index));
                      },
                      leading: CircleAvatar(child: Icon(Icons.person)),
                      title: Text(students[index]),
                      subtitle: Text('helo'),
                      trailing: Column(
                        children: [
                          Text(
                            "10:00 Am",
                            style: TextStyle(color: Colors.white),
                          ),
                          CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.teal,
                            child: Text(
                              '3',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
      ),
    );
  }
}