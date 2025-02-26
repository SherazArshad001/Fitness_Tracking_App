import 'package:fitness_tracking_app/core/constants/helper_text.dart';
import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/helper/exercise_helper.dart';
import 'package:fitness_tracking_app/core/helper/workout_helper.dart';
import 'package:fitness_tracking_app/core/models/workout_model.dart';
import 'package:fitness_tracking_app/features/home/widgets/app_main_card.dart';
import 'package:fitness_tracking_app/features/home/widgets/card2.dart';
import 'package:fitness_tracking_app/features/home/widgets/textfield.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<WorkoutCardModel> workouts = WorkoutCardHelper.getWorkoutCards();
    final exercise = ExerciseHelper.getExercises();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.manual,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Good Morning',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: AppColors.textPrimary,
                  ),
                ),
                const Text(
                  'Sheraz Baloch',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 10),
                const HomeTextfield(),
                const SizedBox(height: 10),
                const LargeText(largeHintText: 'Popular Workouts'),
                const SizedBox(height: 10),
                SizedBox(
                  height: 190,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: workouts.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 15),
                    itemBuilder: (context, index) {
                      final workout = workouts[index];
                      return ImageCard(
                        backgroundImagePath: workout.backgroundImage,
                        mainText: workout.title,
                        box1IconPath: workout.icon1,
                        box1Text: workout.text1,
                        box2IconPath: workout.icon2,
                        box2Text: workout.text2,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                const LargeText(largeHintText: "Today Plan"),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: exercise.length,
                  itemBuilder: (context, index) {
                    return ExerciseProgressCard(
                      exercise: exercise[index],
                    );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
