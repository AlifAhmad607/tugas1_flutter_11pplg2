import 'package:get/route_manager.dart';
import 'package:latihan1_11pplg2/pages/calculatorpage.dart';
import 'package:latihan1_11pplg2/pages/editplayerpage.dart';
import 'package:latihan1_11pplg2/pages/footballpage.dart';
import 'package:latihan1_11pplg2/pages/homepage.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:get/get.dart';


class AppPage {
  static final pages = [
    GetPage(name: AppRoutes.calculatorpage,page: ()=> CalculatorPage(hasil: '',)),
    GetPage(name: AppRoutes.footballPage,page: ()=> Footballpage()),
  GetPage(name: AppRoutes.homepage, page: ()=> HomePage()),
  GetPage(name: AppRoutes.editplayerpage, page: ()=> Editplayerpage())

  ];
  
  
  

}

