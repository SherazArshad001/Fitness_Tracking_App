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
    return SizedBox(
      width: 180,
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            exercise.imagePath,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exercise.title,
                style: TextStyle(
                  color: AppColors.primaryDark,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
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
          )
        ],
      ),
    );
  }
}
