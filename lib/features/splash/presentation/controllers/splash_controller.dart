 // For prefs
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/constants/route_constants.dart';
import '../../../../app/services/auth_service.dart';
import '../../../../main.dart';

class SplashController extends GetxController {
  final AuthService _authService = Get.find();

  @override
  void onReady() {
    super.onReady();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Simulate some loading time (e.g., loading assets, checking updates)
    await Future.delayed(const Duration(seconds: 3));

    final bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (isFirstTime) {
      await prefs.setBool('isFirstTime', false);
      // After splash, go_router's redirect will handle navigation to login
      // if not already handled (e.g., if user was already logged in on a subsequent app open
      // but 'isFirstTime' was still true for some reason, it would go to home)
      // The primary goal here is to ensure splash shows for the duration.
      // The redirect logic in AppRouter will take over after this.
      // We just need to ensure the router attempts a navigation.
      if (_authService.currentUser == null) {
        Get.find<GoRouter>().go(RouteConstants.login);
      } else {
        Get.find<GoRouter>().go(RouteConstants.home);
      }
    } else {
      // Not first time, go_router's redirect will decide based on auth state
      if (_authService.currentUser == null) {
        Get.find<GoRouter>().go(RouteConstants.login);
      } else {
        Get.find<GoRouter>().go(RouteConstants.home);
      }
    }
  }
}