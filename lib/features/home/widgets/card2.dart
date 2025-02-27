import 'package:flutter/material.dart';
import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/models/exercise_plan_model.dart';

class ExerciseProgressCard extends StatelessWidget {
  final ExercisePlanModel exercise;

  const ExerciseProgressCard({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Stack(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    exercise.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exercise.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(exercise.description),
                    const SizedBox(height: 10),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        LinearProgressIndicator(
                          value: exercise.progress / 100,
                          backgroundColor: AppColors.whiteColor,
                          color: AppColors.primary,
                          minHeight: 10,
                        ),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            final maxWidth = constraints.maxWidth;
                            return SizedBox(
                              width: maxWidth,
                              child: Row(
                                children: [
                                  Container(
                                    width:
                                        (maxWidth * (exercise.progress / 100))
                                            .clamp(30.0, maxWidth),
                                    alignment: Alignment.center,
                                    child: Text(
                                      '${exercise.progress.toInt()}%',
                                      style: const TextStyle(
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            right: 5,
            child: Container(
              width: 100,
              decoration: BoxDecoration(
                color: AppColors.cardBackground,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  exercise.difficulty,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
