import 'package:get/get.dart';

class NavController extends GetxController {
  // index tab aktif
  var currentIndex = 0.obs;

  // method ganti index
  void changePage(int index) {
    currentIndex.value = index;
  }
}
