import 'package:flutter/material.dart';
import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/model/exercise_model.dart';

class ExerciseProgressCard extends StatelessWidget {
  final ExerciseModel exercise;

  const ExerciseProgressCard({super.key, required this.exercise});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 0.7,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: AppColors.textWhite,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
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
                Flexible(
                  fit: FlexFit.loose,
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
                            backgroundColor: AppColors.textWhite,
                            color: AppColors.primary,
                            minHeight: 10,
                          ),
                          LayoutBuilder(
                            builder: (context, constraints) {
                              final maxWidth = constraints.maxWidth;
                              return Row(
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
          ),
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
    );
  }
}
