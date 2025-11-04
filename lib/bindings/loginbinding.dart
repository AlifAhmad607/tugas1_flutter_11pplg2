import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/logincontroller.dart';



class Loginbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<logincontroller>(() => logincontroller());
  }
}