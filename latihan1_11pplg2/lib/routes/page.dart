import 'package:get/route_manager.dart';
import 'package:latihan1_11pplg2/calculatorpage.dart';
import 'package:latihan1_11pplg2/editplayerpage.dart';
import 'package:latihan1_11pplg2/footballpage.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:get/get.dart';


class AppPage {
  static final pages = [
    GetPage(name: AppRoutes.calculatorpage,page: ()=> CalculatorPage(hasil: '',)),
    GetPage(name: AppRoutes.footballPage,page: ()=> Footballpage()),
        GetPage(
  name: AppRoutes.editplayerpage,
  page: () {
    final index = Get.arguments as int; 
    return Editplayerpage(index: index);
  }
),
  ];
  
  
  

}

