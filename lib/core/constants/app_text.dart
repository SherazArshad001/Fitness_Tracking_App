import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final String largeHintText;
  const LargeText({
    super.key,
    required this.largeHintText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      largeHintText,
      style: TextStyle(
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    );
  }
}

class AppText {
  static const String home = 'Home';
  static const String explore = 'explore';
  static const String statistics = 'Statistics';
  static const String profile = 'profile';
  static const String greeting = 'Good Morning';
  static const String username = 'Sheraz Baloch';
}
