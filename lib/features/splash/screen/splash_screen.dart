import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:fitness_tracking_app/features/splash/widgets/splash_content.dart';
import 'package:fitness_tracking_app/features/splash/widgets/splash_fade_effect.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Positioned.fill(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  AppImages.splashImage,
                  fit: BoxFit.cover,
                  width: MediaQuery.sizeOf(context).width,
                ),
                SplashFadeEffect()
              ],
            ),
            SplashBottomContent()
          ],
        ),
      ),
    );
  }
}
