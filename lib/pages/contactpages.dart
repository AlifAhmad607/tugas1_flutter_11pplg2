import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1_11pplg2/controller/contactcontroller.dart';

class ContactPages extends StatelessWidget {
  const ContactPages({super.key});

  @override
  Widget build(BuildContext context) {
    
    final controller = Get.find<ContactController>();

    return Scaffold(
      appBar: AppBar(title: const Text("Contacts")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller.nameController,
                    decoration: const InputDecoration(
                      hintText: "Masukkan nama kontak...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: controller.addContact,
                  child: const Text("Tambah"),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(() {
              final data = controller.contacts;
              if (data.isEmpty) {
                return const Center(child: Text("Belum ada kontak"));
              }
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final item = data[index];
                  return ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(item['name']),
                    onTap: () {
                      // Edit contact
                      final editCtrl =
                          TextEditingController(text: item['name']);
                      Get.defaultDialog(
                        title: "Edit Kontak",
                        content: TextField(controller: editCtrl),
                        confirm: ElevatedButton(
                          onPressed: () {
                            controller.updateContact(item['id'], editCtrl.text);
                            Get.back();
                          },
                          child: const Text("Simpan"),
                        ),
                        cancel: TextButton(
                          onPressed: () => Get.back(),
                          child: const Text("Batal"),
                        ),
                      );
                    },
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => controller.deleteContact(item['id']),
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),
    );
  }
}
