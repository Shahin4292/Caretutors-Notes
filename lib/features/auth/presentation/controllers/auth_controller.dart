import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';

class AuthController extends GetxController {
  Future<void> register(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
    await prefs.setBool('loggedIn', true);
    Get.context!.go('/home');
  }

  Future<void> login(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    final savedEmail = prefs.getString('email');
    final savedPassword = prefs.getString('password');
    if (savedEmail == email && savedPassword == password) {
      await prefs.setBool('loggedIn', true);
      Get.context!.go('/home');
    } else {
      Get.snackbar('Error', 'Invalid credentials');
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('loggedIn', false);
    Get.context!.go('/login');
  }
}