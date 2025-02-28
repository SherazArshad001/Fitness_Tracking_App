import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Center(
          child: Text(
            "Profile",
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0), // Add some top spacing
              child: CircleAvatar(
                radius: 50, // Adjust size of the circle
                backgroundColor: AppColors.primary, // Border/background color
                child: ClipOval(
                  child: Image.asset(
                    AppImages.userImage,
                    width: 100, // Match diameter (2 * radius)
                    height: 100,
                    fit: BoxFit.cover, // Ensure image fills the circle
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
