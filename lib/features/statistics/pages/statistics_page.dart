import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:fitness_tracking_app/core/constants/app_text.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/calories_card.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/cycling_card.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/date_container.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/heart_rate_card.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/motivated_card.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/step_card.dart';
import 'package:fitness_tracking_app/features/statistics/widgets/training_card.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DateContainerList(),
                SizedBox(
                  height: 10.0,
                ),
                LargeText(largeHintText: 'Today Report'),
                SizedBox(
                  height: 10.0,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 218,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CaloriesCard(),
                          TrainingTimeCard(),
                        ],
                      ),
                      Spacer(),
                      CyclingCard()
                    ],
                  ),
                ),
                SizedBox(
                  height: 170,
                  width: MediaQuery.sizeOf(context).width,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 170,
                        width: 200,
                        child: HearRateCard(),
                      ),
                      Spacer(),
                      Column(
                        children: [
                          StepsCard(),
                          MotivateCard(),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: 130,
                  child: Row(
                    children: [
                      Card(
                        color: AppColors.sleepCardColor,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  DecoratedBox(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColors.trainingBarColor
                                          .withOpacity(0.7),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(AppImages.moon),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  LargeText(largeHintText: "Sleep"),
                                ],
                              ),
                              Spacer(),
                              Image.asset(AppImages.sleep)
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        width: 180,
                        child: Card(
                          color: AppColors.waterCardColor,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppImages.water,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    LargeText(largeHintText: "Water")
                                  ],
                                ),
                                Spacer(),
                                Image.asset(AppImages.waterImage)
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
