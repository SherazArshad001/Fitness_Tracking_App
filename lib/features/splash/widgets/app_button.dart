import 'package:fitness_tracking_app/core/common/bottom_navbar/app_bottom_navbar.dart';
import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryDark,
        foregroundColor: AppColors.background,
        minimumSize: Size(MediaQuery.sizeOf(context).width, 70),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavBar(),
          ),
        );
      },
      child: Text(
        'Push Your Limits',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }
}
