import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Examplecontroller extends GetxController{
  var ismobile = true.obs;
  void updatelayout(BoxConstraints contrains){
    ismobile.value = contrains.maxWidth < 600;
  }
}