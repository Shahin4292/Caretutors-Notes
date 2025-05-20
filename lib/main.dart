// main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/splash/presentation/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<Widget> _decideMainPage() async {
    final prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('first_time') ?? true;

    if (isFirstTime) {
      await prefs.setBool('first_time', false);
      await Future.delayed(const Duration(seconds: 2)); // Simulate splash delay
      return const LoginPage(); // After splash, go to login
    } else {
      return const LoginPage(); // You can also add logic for auto-login here
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Default route
      getPages: [
        GetPage(name: '/', page: () => SplashWrapper()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/home', page: () => const HomePage()),
      ],
    );
  }
}

// Wraps splash + routing decision
class SplashWrapper extends StatelessWidget {
  SplashWrapper({super.key});

  final Future<Widget> _mainPageFuture = _decideMainPage();

  static Future<Widget> _decideMainPage() async {
    final prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('first_time') ?? true;

    if (isFirstTime) {
      await prefs.setBool('first_time', false);
      await Future.delayed(const Duration(seconds: 2));
      return const LoginPage();
    } else {
      return const LoginPage(); // Can be replaced with HomePage or onboarding
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Widget>(
      future: _mainPageFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SplashScreen();
        } else if (snapshot.hasData) {
          return snapshot.data!;
        } else {
          return const Scaffold(
              body: Center(child: Text("Error loading app")));
        }
      },
    );
  }
}
