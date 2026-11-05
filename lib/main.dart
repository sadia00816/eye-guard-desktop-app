
import 'package:eye_guard_desktop_app/Loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'app_routes.dart';

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
      initialRoute: Approutes.login,
      getPages: Approutes.pages,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("count"),
//           backgroundColor: Colors.blue,
//         ),
//         body: HomeScreen(counter: counter, box: box),
//         floatingActionButton: FloatingActionButton(
//           onPressed: (){
//             Get.to(Loginpage());
//             box.write('counter', counter.value);
//             counter++;
//         },child: Icon(Icons.add),
//         ),
//       )
    );
  }
}

class HomeScreen extends StatelessWidget {
  const new({
    super.key,
    required this.counter,
    required this.box,
  });

  final RxInt counter;
  final GetStorage box;

  @override
  Widget build(BuildContext context) {
    return Obx(
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
    );
  }
}