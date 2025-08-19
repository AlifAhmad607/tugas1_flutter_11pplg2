import 'package:get/get.dart';
import 'package:latihan1_11pplg2/modelplayer.dart';

class Editplayercontroller extends GetxController {
  var players = <Player>[
    Player(
      nama: 'Rashford',
      posisi: 'Forward',
      nomorPunggung: 10,
      
    ),
    Player(
      nama: 'Bruno Fernandes',
      posisi: 'Forward',
      nomorPunggung: 7,
      
    ),
    Player(
      nama: 'Casemiro',
      posisi: 'Forward',
      nomorPunggung: 7,
      
    ),
    Player(
      nama: 'Varane',
      posisi: 'Forward',
      nomorPunggung: 7,
      
    ),
  ].obs;

  void updatePlayer(int index, String namaBaru, String posisiBaru, int nomorBaru) {
    players[index].nama = namaBaru;
    players[index].posisi = posisiBaru;
    players[index].nomorPunggung = nomorBaru;
    update(); // untuk memicu refresh jika pakai GetBuilder
    players.refresh(); // kalau pakai Obx
  }
}
