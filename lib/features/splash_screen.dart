import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.splashImage),
          Text('data'),
        ],
      ),
    );
  }
}
