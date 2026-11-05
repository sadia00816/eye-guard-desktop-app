import 'package:eye_guard_desktop_app/Loginpage.dart';
import 'package:eye_guard_desktop_app/chat.dart';
import 'package:get/get.dart';

class Approutes{

  static const chat = "/chat";
  static const login = "/login";
  
 static final pages = [
  GetPage(
    name: login, 
    page: () => Loginpage(),
    ),

  GetPage(
    name: chat, 
    page: () => ChatHistory(name: 'sadia', n: 1),
  ),
 ];
}