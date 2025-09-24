import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class logincontroller extends GetxController {
   final TextEditingController usernameController = TextEditingController();
   final TextEditingController passwordController = TextEditingController();

    login(){
    if (usernameController.text.toString() == "admin" && passwordController.text.toString() == "admin") {
      
    }
    else {
      Get.snackbar("Error", "invalid username or password");
    }
  }

}