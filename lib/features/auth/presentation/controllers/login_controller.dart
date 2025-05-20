import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login(VoidCallback onSuccess) {
    final email = emailController.text.trim();
    final password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Email and Password cannot be empty");
      return;
    }

    // Dummy validation
    if (email == "admin@example.com" && password == "123456") {
      onSuccess();
    } else {
      Get.snackbar("Login Failed", "Invalid credentials");
    }
  }
}
