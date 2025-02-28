import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/training_progress.dart';
import 'package:flutter/material.dart';

class TrainingTimeCard extends StatelessWidget {
  const TrainingTimeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.sleepCardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          15,
        ),
      ),
      child: SizedBox(
        width: 120,
        height: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Training Time',
            ),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: SizedBox(
                width: 100,
                height: 100,
                child: PartialCircleBorder(
                  percentage: 0.8,
                  borderColor: AppColors.trainingBarColor,
                  borderWidth: 8.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
