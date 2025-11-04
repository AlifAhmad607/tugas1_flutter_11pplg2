import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/examplecontroller.dart';
import 'package:latihan1_11pplg2/pages/example/example_mobile.dart';
import 'package:latihan1_11pplg2/pages/example/example_widescreen.dart';
import 'package:latihan1_11pplg2/pages/footballpage.dart';

class ExamplePage extends StatelessWidget {
   ExamplePage({super.key});

  final controller = Get.find<Examplecontroller>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          controller.updatelayout(constraints);
         return Obx(()=> controller.ismobile.value ? Footballpage() : Footballpage());
        },
      ),
    );
  }
}