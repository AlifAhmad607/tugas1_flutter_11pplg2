import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/routes/page.dart';   // berisi AppPages
import 'package:latihan1_11pplg2/routes/routes.dart'; // berisi AppRoutes

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("🔔 Background message: ${message.messageId}");
}

void main() async{
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // Set background handler
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BottomNav GetX',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.loginapipage, 
      getPages: AppPage.pages,     
    );
  }
}
