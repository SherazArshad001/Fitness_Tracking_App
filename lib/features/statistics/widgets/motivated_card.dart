import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_text.dart';
import 'package:flutter/material.dart';

class MotivateCard extends StatelessWidget {
  const MotivateCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 60,
      child: Card(
        color: AppColors.motivateColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [LargeText(largeHintText: 'Keep it Up! 💪 ')],
        ),
      ),
    );
  }
}
