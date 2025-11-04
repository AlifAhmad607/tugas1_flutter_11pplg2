  import 'package:flutter/material.dart';
  import 'package:get/get.dart';
  import 'package:latihan1_11pplg2/helper/db_helper.dart';

  class ContactController extends GetxController {
    final TextEditingController nameController = TextEditingController();
    final contacts = <Map<String, dynamic>>[].obs;
    final _dbHelper = DBHelper();

    @override
    void onInit() {
      super.onInit();
      fetchContacts();
    }

    
    Future<void> fetchContacts() async {
      final data = await _dbHelper.getNames();
      contacts.assignAll(data); 
    }

    // Tambah kontak baru
    Future<void> addContact() async {
      final text = nameController.text.trim();
      if (text.isEmpty) return;

      await _dbHelper.insertName(text);
      nameController.clear();
      fetchContacts();
    }

    
    Future<void> updateContact(int id, String newName) async {
      if (newName.trim().isEmpty) return;

      await _dbHelper.updateName(id, newName.trim());
      fetchContacts();
    }

  
    Future<void> deleteContact(int id) async {
      await _dbHelper.deleteName(id);
      fetchContacts();
    }

    @override
    void onClose() {
      nameController.dispose();
      super.onClose();
    }
  }
