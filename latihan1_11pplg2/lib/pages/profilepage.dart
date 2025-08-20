import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/profilecon%20troller.dart';


class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            Obx(() => CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(controller.imageUrl.value),
            )),
            const SizedBox(height: 20),

            
            Obx(() => Text(
              controller.name.value,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )),
            const SizedBox(height: 8),

            
            Obx(() => Text(
              controller.email.value,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            )),
            const SizedBox(height: 8),

            
            Obx(() => Text(
              controller.address.value,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            )),
          ],
        ),
      ),
    );
  }
}

