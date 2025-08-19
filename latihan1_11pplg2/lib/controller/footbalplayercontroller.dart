import 'package:get/get.dart';

class Footbalplayercontroller extends GetxController {
  var players = <String>[
    "Rashford",
    "Bruno Fernandes",
    "Casemiro",
    "Varane"
  ].obs;

  void updatePlayer(int index, String namaBaru ){
    players[index] = namaBaru;
  }
}
