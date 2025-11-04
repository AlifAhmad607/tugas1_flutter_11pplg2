import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/splashscreencontroller.dart';


class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashscreenController>(() => SplashscreenController());
  }
}