// splash_screens.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:myapp/screens/login_screen.dart';
import 'home_screen.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({Key? key}) : super(key: key);

  @override
  State<SplashScreens> createState() => SplashScreensState();
}

class SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Logo.png'),  // Sesuaikan dengan path logo Anda
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}