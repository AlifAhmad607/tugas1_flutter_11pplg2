import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/LoginApiController.dart';


class LoginAPIBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginAPIController>(() => LoginAPIController());
  }
}
