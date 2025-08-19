import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:latihan1_11pplg2/controller/EditPlayercontroller.dart';


class Editplayerpage extends StatelessWidget {

    final int index;
    Editplayerpage({required this.index});

    final Editplayercontroller editplayercontroller = Get.put(Editplayercontroller());
    
    final TextEditingController namaController = TextEditingController();
    final TextEditingController posisiController = TextEditingController();
    final TextEditingController nomorController = TextEditingController();

     @override
    Widget build(BuildContext context) {
    final player = editplayercontroller.players[index];
    namaController.text = player.nama;
    posisiController.text = player.posisi;
    nomorController.text = player.nomorPunggung.toString();

      return Scaffold(
        appBar: AppBar(title: Text("editplayer"),),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: namaController,
                decoration: InputDecoration(labelText: "nama player"),
              ),
              SizedBox(height: 8,),
              TextField(
                controller: posisiController,
                decoration: InputDecoration(labelText: "posisi"),
              ),
              TextField(
                controller: nomorController,
                decoration: InputDecoration(labelText: "nomor punggung "),
              ),
              ElevatedButton(onPressed: () {
                editplayercontroller.updatePlayer(
                index, 
                namaController.text,
                posisiController.text,
                int.tryParse(nomorController.text) ?? player.nomorPunggung,
                );
                Get.back();
              }, child: Text("save"))
              
            ],
          ),
        ),
      ) ;
    }
}