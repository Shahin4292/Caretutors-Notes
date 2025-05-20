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
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isFirstTime = prefs.getBool('first_time');

    if (isFirstTime == null || isFirstTime == true) {
      await prefs.setBool('first_time', false);
      // Show splash screen for 2 seconds then go to Home
      await Future.delayed(const Duration(seconds: 2));
      return const HomePage();
    } else {
      return const HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder<Widget>(
        future: _decideMainPage(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
          } else if (snapshot.hasData) {
            return snapshot.data!;
          } else {
            return const Scaffold(body: Center(child: Text("Error loading app")));
          }
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar("Hello", "This is the home page");
          },
          child: const Text("Show Snackbar"),
        ),
      ),
    );
  }
}
