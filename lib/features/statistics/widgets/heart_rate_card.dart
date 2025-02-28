
import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:fitness_tracking_app/core/constants/app_text.dart';
import 'package:flutter/material.dart';

class HearRateCard extends StatelessWidget {
  const HearRateCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.heartRateCardColor,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Image.asset(AppImages.heartbeat),
                SizedBox(
                  width: 10,
                ),
                LargeText(
                  largeHintText: 'Heart Rate',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Image.asset(
            AppImages.hearRate,
          ),
        ],
      ),
    );
  }
}
