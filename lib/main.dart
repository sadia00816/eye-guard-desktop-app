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
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Shoe Store',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          actions: [Icon(Icons.shopping_bag_outlined),],
        ),
        body: SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(),
                  child: Image.asset('assets/images/image1.jfif'),
                 ),
                 SizedBox(height: 15,),
                 Text('Sport Shoes',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                  ),
                ),
                 SizedBox(height: 15),
                 Text('Premium Quality Shoes', style: TextStyle(fontSize: 14, color: Colors.grey),),
                 SizedBox(height: 15),
                 Text('Rs. 2500',style: TextStyle(color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),),
                 SizedBox(height: 15),
                 Text('Selected Shoe Type', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                 SizedBox(height: 15),
                Row(
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text('Sport'),),
                    SizedBox(width: 15),
                    ElevatedButton(onPressed: (){}, child: Text('Casual'),),
                    SizedBox(width: 15),
                    ElevatedButton(onPressed: (){}, child: Text('Running'),),
                    SizedBox(width: 15),
                  ],
                ),
                SizedBox(height: 15),
                Text('Selected Color', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 15),
                Row(
                  children: [
                    CircleAvatar(backgroundColor: Colors.black),
                     SizedBox(width: 15),
                    CircleAvatar(backgroundColor: Colors.red),
                     SizedBox(width: 15),
                    CircleAvatar(backgroundColor: Colors.blue),
                     SizedBox(width: 15),
                    CircleAvatar(backgroundColor: Colors.green),
                  ],
                ),
                SizedBox(height: 15),
                Text('Selected Size',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 15),
                Row(
                  children: [
                    ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(4),
                      ) 
                    ),
                     child: Text('39'),
                    ),
                    SizedBox(width: 15),
                    ElevatedButton(onPressed: (){}, child: Text('40'),),
                    SizedBox(width: 15),
                    ElevatedButton(onPressed: (){}, child: Text('41'),),
                    SizedBox(width: 15),
                    ElevatedButton(onPressed: (){}, child: Text('42'),),
                  ],
                ),
                SizedBox(height: 15),
                Text('Quantity',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 15),
                Row(
                  children: [
                    Icon(Icons.remove_circle_outline),
                    SizedBox(width: 15),
                    Text('1'),
                    SizedBox(width: 15),
                    Icon(Icons.add_circle_outline),
                  ],
                ),
                SizedBox(height: 15),
                Text('Total: Rs.2500', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(height: 15),
                SizedBox(height: 45,
                width: double.infinity,
                child:ElevatedButton(onPressed: (){}, 
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black), 
                  child:Text('ADD TO CART', style: TextStyle(color:Colors.white),),
                  ),
                )
              ],
            ),
          ),  
        ),
      ),
    );
  }
}