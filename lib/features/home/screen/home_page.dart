import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:fitness_tracking_app/features/home/widgets/card.dart';
import 'package:fitness_tracking_app/features/home/widgets/textfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: AppColors.textPrimary,
              ),
            ),
            Text(
              'Sheraz Baloch',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            HomeTextfield(),
            SizedBox(
              height: 10,
            ),
            Text(
              'Popular Workouts',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ImageCard(
                backgroundImagePath: AppImages.cardImage1,
                mainText: 'Lower Body\nTraining',
                box1IconPath: AppImages.flame,
                box1Text: '500 Kcal',
                box2IconPath: AppImages.time,
                box2Text: '50 Min',
              ),
            )
          ],
        ),
      ),
    );
  }
}
