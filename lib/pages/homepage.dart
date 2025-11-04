import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/navcontroller.dart';
import 'package:latihan1_11pplg2/pages/calculatorpage.dart';
import 'package:latihan1_11pplg2/pages/footballpage.dart';
import 'package:latihan1_11pplg2/pages/profilepage.dart';


class HomePage extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final pages = [
    CalculatorPage(hasil: '',),
    Footballpage(),
    ProfilePage
    (),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: pages[navController.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navController.selectedIndex.value,
        onTap: navController.changePage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Kalkulator'),
          BottomNavigationBarItem(icon: Icon(Icons.sports_soccer), label: 'Football'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    ));
  }
}
