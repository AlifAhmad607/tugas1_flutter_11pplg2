import 'package:get/get.dart';
import 'package:latihan1_11pplg2/modelplayer.dart';

class Footbalplayercontroller extends GetxController {
  var players = <Player>[
    Player(
    nama: "andre onana",
    posisi: "kiper", 
    nomorPunggung: 24,
    images: "assets/images/onana.webp",
    ),
    
    Player(
    nama: "Bruno fernandes",
    posisi: "Midfilder", 
    nomorPunggung: 8,
    images: "assets/images/brunofernandes.jpg"),
    Player(
    nama: "casemiro",
    posisi: "Midfilder", 
    nomorPunggung: 18,
    images: "assets/images/casdedmiro.jpg"),
    Player(
    nama: "Garnacho ",
    posisi: "posisi", 
    nomorPunggung: 17,
    images: "assets/images/garnacho.jpg"),
  ].obs;

   void updatePlayer(int index, Player newplayer) {
    players[index] = newplayer;
  }
}

// "Rashford",
    // "Bruno Fernandes",
    // "Casemiro",
    // "Varane"