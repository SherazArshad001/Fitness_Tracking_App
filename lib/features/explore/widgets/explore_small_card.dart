import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/models/small_card_model.dart';
import 'package:flutter/material.dart';

class ExploreSmallCard extends StatelessWidget {
  final Exercise exercise;
  const ExploreSmallCard({
    super.key,
    required this.exercise,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            exercise.imagePath,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                exercise.title,
                style: TextStyle(
                  color: AppColors.primaryDark,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                exercise.duration,
                style: TextStyle(
                  color: AppColors.primaryDark,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                exercise.level,
                style: TextStyle(
                  color: AppColors.primaryDark,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
