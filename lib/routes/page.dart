import 'package:get/route_manager.dart';
import 'package:latihan1_11pplg2/bindings/LoginApiBinding.dart';
import 'package:latihan1_11pplg2/bindings/contactbinding.dart';
import 'package:latihan1_11pplg2/bindings/example_binding.dart';
import 'package:latihan1_11pplg2/bindings/splashbinding.dart';
import 'package:latihan1_11pplg2/login.dart';
import 'package:latihan1_11pplg2/pages/LoginApiPage.dart';
import 'package:latihan1_11pplg2/pages/calculatorpage.dart';
import 'package:latihan1_11pplg2/pages/contactpages.dart';
import 'package:latihan1_11pplg2/pages/editplayerpage.dart';
import 'package:latihan1_11pplg2/pages/example_transform.dart';
import 'package:latihan1_11pplg2/pages/footballpage.dart';
import 'package:latihan1_11pplg2/pages/homepage.dart';
import 'package:latihan1_11pplg2/pages/homepagenotif.dart';
import 'package:latihan1_11pplg2/pages/splashscreen.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:get/get.dart';


class AppPage {
  static final pages = [
    GetPage(name: AppRoutes.calculatorpage,page: ()=> CalculatorPage(hasil: '',)),
    GetPage(name: AppRoutes.footballPage,page: ()=> Footballpage()),
    GetPage(name: AppRoutes.homepage, page: ()=> HomePage()), 
    GetPage(name: AppRoutes.editplayerpage, page: ()=> Editplayerpage()),
    GetPage(name: AppRoutes.loginpage, page: ()=> loginpage ()),
    GetPage(name: AppRoutes.contactpage, page: ()=>  ContactPages(), binding: Contactbinding()),
    GetPage(name: AppRoutes.examplepage, page: ()=>  ExamplePage(), binding: ExampleBinding()),
    GetPage(name: AppRoutes.loginapipage, page: ()=>  LoginAPIPage(), binding: LoginAPIBinding()),
    GetPage(name: AppRoutes.SplashscreenPage, page: ()=>  SplashscreenPage(), binding: SplashBinding()),
    GetPage(name: AppRoutes.homepagenotif, page: ()=> Homepagenotif ()),
    
  ];
  
  
  

}

