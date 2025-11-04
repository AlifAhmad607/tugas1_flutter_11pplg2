import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:latihan1_11pplg2/Model/LoginApi.dart';
import 'package:latihan1_11pplg2/routes/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LoginAPIController extends GetxController {
  var isLoading = false.obs;

  Future<void> login(String username, String password) async {
    try {
      isLoading.value = true;

      var url = Uri.parse("https://mediadwi.com/api/latihan/login");
      var response = await http.post(
        url,
        body: {
          'username': username,
          'password': password,
        },
      );

      var data = jsonDecode(response.body);

      if (response.statusCode == 200 && data["status"] == true) {
        LoginApi model = LoginApi.fromJson(data);

        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setString("token", model.token);

        Get.snackbar("Success", "Sukses Login");
      } else {
        Get.snackbar("Error", data["message"] ?? "Login gagal");
      }
    } catch (e) {
      Get.snackbar("Error", "Terjadi kesalahan: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
 // ✅ Simpan Token
  Future<void> saveToken(String token) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("token", token);
  }

  // ✅ Ambil Token
  Future<String?> getToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("token");
  }

  // ✅ Hapus Token
  Future<void> clearToken() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.remove("token");
  }

  // ✅ Fungsi Logout
  Future<void> logout() async {
    try {
      SharedPreferences pref = await SharedPreferences.getInstance();
      await pref.remove("token"); // hapus token login
      await pref.remove("username"); // jaga-jaga jika username juga disimpan

      Get.snackbar("Logout", "Berhasil keluar dari akun");
      Get.offAllNamed(AppRoutes.SplashscreenPage); // kembali ke splash screen
    } catch (e) {
      Get.snackbar("Error", "Gagal logout: $e");
    }
  }

