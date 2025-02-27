import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:fitness_tracking_app/core/models/exercise_plan_model.dart';

class ExerciseHelper {
  static List<ExercisePlanModel> getExercises() {
    return [
      ExercisePlanModel(
        title: 'Push Ups',
        description: '100 Push Ups a day',
        imagePath: AppImages.exercise1,
        progress: 45.0,
        difficulty: 'Intermediate',
      ),
      ExercisePlanModel(
        title: 'Squats',
        description: '50 Squats a day',
        imagePath: AppImages.exercise2,
        progress: 100.0,
        difficulty: 'Beginner',
      ),
      ExercisePlanModel(
        title: 'Pull Ups',
        description: '30 Pull Ups a day',
        imagePath: AppImages.exercise3,
        progress: 20.0,
        difficulty: 'Advanced',
      ),
      ExercisePlanModel(
        title: 'Running',
        description: '5 Kilometer a day',
        imagePath: AppImages.exercise4,
        progress: 20.0,
        difficulty: 'Advanced',
      ),
    ];
  }
}
