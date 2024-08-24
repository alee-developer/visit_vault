import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/auth/auth_controller.dart';
import '../auth/login_screen.dart';
import '../home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuthStatus();
  }

  void _checkAuthStatus() async {
    await Future.delayed(Duration(seconds: 3)); // Splash screen duration
    final isAuthenticated = Get.put(AuthController());
    if (isAuthenticated.isUserLogin() == true) {
      Get.off(() => HomeScreen(), transition: Transition.fadeIn, duration: Duration(seconds: 1));
    } else {
      Get.off(() => LoginScreen(), transition: Transition.fadeIn, duration: Duration(seconds: 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo/app_logo.png'), // Add your splash image here
            const SizedBox(height: 20),
            const Text(
              'Welcome to VisitVault',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
