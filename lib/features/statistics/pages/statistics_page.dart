import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_text.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/calories_card.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/cycling_card.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/date_container.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/training_card.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DateContainerList(),
              SizedBox(
                height: 10.0,
              ),
              LargeText(largeHintText: 'Today Report'),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 218,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CaloriesCard(),
                          TrainingTimeCard(),
                        ],
                      ),
                      CyclingCard()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
