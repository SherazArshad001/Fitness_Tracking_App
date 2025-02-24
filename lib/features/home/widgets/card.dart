import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String backgroundImagePath;
  final String mainText;
  final String box1IconPath;
  final String box1Text;
  final String box2IconPath;
  final String box2Text;

  const ImageCard({
    super.key,
    required this.backgroundImagePath,
    required this.mainText,
    required this.box1IconPath,
    required this.box1Text,
    required this.box2IconPath,
    required this.box2Text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 280,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(backgroundImagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    mainText,
                    style: const TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      height: 0.9,
                    ),
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoBox(box1IconPath, box1Text),
                      const SizedBox(height: 10),
                      _buildInfoBox(box2IconPath, box2Text),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.transparent
                    .withOpacity(0.2), // Adjust opacity here
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildInfoBox(String iconPath, String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
    decoration: BoxDecoration(
      color: AppColors.background,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          iconPath,
          color: AppColors.textPrimary,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: const TextStyle(
            color: AppColors.textPrimary,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
