import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class SplashscreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    checkLogin();
  }

  checkLogin() async {
    await Future.delayed(Duration(seconds: 1));
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString("username") != null) {
      Get.offAllNamed(AppRoutes.homepage);
    } else {
      Get.offAllNamed(AppRoutes.loginpage);
    }
  }
}