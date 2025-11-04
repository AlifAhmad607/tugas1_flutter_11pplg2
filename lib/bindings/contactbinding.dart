import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:latihan1_11pplg2/controller/contactcontroller.dart';

class Contactbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContactController>(() => ContactController());
  }
}