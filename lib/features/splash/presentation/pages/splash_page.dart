import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/widgets/loading_indicator.dart';
import '../controllers/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller's onReady will trigger navigation logic
    // Get.find<SplashController>(); // Ensure controller is initialized if not already via binding

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Replace with your app logo
            Icon(Icons.note_alt_rounded, size: 100, color: Colors.white),
            const SizedBox(height: 20),
            Text(
              'Caretutors Notes',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            const LoadingIndicator(color: Colors.white, size: 40),
          ],
        ),
      ),
    );
  }
}