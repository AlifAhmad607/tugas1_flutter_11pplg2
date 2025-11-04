import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/examplecontroller.dart';

class ExampleBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<Examplecontroller>(()=>Examplecontroller());
  }
}