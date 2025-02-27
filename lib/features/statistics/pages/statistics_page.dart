import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_text.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/date_container.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/training_progress.dart';
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
              Row(
                children: [
                  Column(
                    children: [
                      Card(
                        color: AppColors.background,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        child: SizedBox(
                          width: 110,
                          height: 70,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Active calories',
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              LargeText(largeHintText: '645 Cal')
                            ],
                          ),
                        ),
                      ),
                      Card(
                        color: AppColors.cardBackground1,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        child: SizedBox(
                          width: 110,
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
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
