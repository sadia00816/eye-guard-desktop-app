
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RxInt counter = 1.obs;
  final box = GetStorage();

  @override
  void initState() {
    super.initState();
    counter.value = box.read('counter') ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("count"),
          backgroundColor: Colors.blue,
        ),
        body: Obx(
          ()=> Center(
            child:Column(
              children: [
                Text('Counter: ${counter.value}'),
                ElevatedButton(onPressed: (){
                  counter.value--;
                    box.write('counter',counter.value);
                  }, child: Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          box.write('counter', counter.value);
            counter++;
        },child: Icon(Icons.add),
        ),
      )
    );
  }
}