import 'package:fitness_tracking_app/core/common/bottom_navbar/app_bottom_navbar.dart';
import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:fitness_tracking_app/features/splash/widgets/splash_content.dart';
import 'package:fitness_tracking_app/features/splash/widgets/splash_fade_effect.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        (context),
        MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Stack(
        // ✅ Use Stack instead of Positioned.fill
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    AppImages.splashImage,
                    fit: BoxFit.cover,
                    width: MediaQuery.sizeOf(context).width,
                  ),
                  SplashFadeEffect(),
                ],
              ),
              SplashBottomContent(),
            ],
          ),
        ],
      ),
    );
  }
}
