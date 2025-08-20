import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/routes/page.dart';   // berisi AppPages
import 'package:latihan1_11pplg2/routes/routes.dart'; // berisi AppRoutes

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BottomNav GetX',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homepage, 
      getPages: AppPage.pages,     
    );
  }
}
