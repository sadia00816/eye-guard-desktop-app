import 'package:flutter/material.dart';

class ChatHistory extends StatelessWidget {
  ChatHistory({super.key, required this.name, required this.n});

  final String name;
  final int n; 
  List<String> send = [ 
    'hi','hi', "how are you","i am fine", 'what are you doing', 'nothing special',
  ];

 @override
 Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
       title: Text(name),
      ),
      body: Column(
        children: [
          Expanded(
            child:ListView.builder(
                   itemCount: 6,
                    itemBuilder: (context, index) {
                      bool isMe = index % 2 != 0;
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: isMe ? Alignment.centerLeft: Alignment.centerRight,
                            child: Container(
                               padding: EdgeInsets.all(20),
                               color: Colors.green.shade200,
                               child: Text(send[index]),
                            ),
                          ),
                        );
                    },
                  ),
                ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder()
                    ),
                  ),
            ), 
          ],
        ),
      ),
    );
  }
}