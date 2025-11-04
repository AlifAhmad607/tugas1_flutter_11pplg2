import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/footbalplayercontroller.dart';
import 'package:latihan1_11pplg2/controller/navcontroller.dart';
import 'package:latihan1_11pplg2/controller/profilecon%20troller.dart';

class Mainmenubindings extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
     Get.lazyPut<Footbalplayercontroller>(()=>Footbalplayercontroller());
     Get.lazyPut<ProfileController>(()=>ProfileController());
     Get.lazyPut<NavController>(()=>NavController());
      
  }
  
}