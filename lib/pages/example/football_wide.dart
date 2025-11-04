import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:latihan1_11pplg2/controller/footbalplayercontroller.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';

class FootballWide extends StatelessWidget {
  FootballWide({super.key});

  final Footbalplayercontroller footbalplayercontroller = 
  Get.put(Footbalplayercontroller(), permanent: true);

  @override
  Widget build(BuildContext context) {
     final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("man united player")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(() => ListView.builder(
          itemCount: footbalplayercontroller.players.length,
          itemBuilder: (context, index){
            return ListTile(
              onTap: () {
    Get.toNamed(AppRoutes.editplayerpage, arguments: index);
  },
  leading: CircleAvatar(
    backgroundImage: AssetImage(footbalplayercontroller.players[index].images),
  ),
  title: Text(footbalplayercontroller.players[index].nama),
  subtitle: Text(footbalplayercontroller.players[index].posisi),
  trailing: Text(
    footbalplayercontroller.players[index].nomorPunggung.toString(),
  ),
  
            );
          }
        ))
      ),
    );
  }
}