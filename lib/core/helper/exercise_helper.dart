import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:fitness_tracking_app/core/model/exercise_model.dart';

class ExerciseHelper {
  static List<ExerciseModel> getExercises() {
    return [
      ExerciseModel(
        title: 'Push Ups',
        description: '100 Push Ups a day',
        imagePath: AppImages.exercise1,
        progress: 45.0,
        difficulty: 'Intermediate',
      ),
      ExerciseModel(
        title: 'Squats',
        description: '50 Squats a day',
        imagePath: AppImages.exercise2,
        progress: 70.0,
        difficulty: 'Beginner',
      ),
      ExerciseModel(
        title: 'Pull Ups',
        description: '30 Pull Ups a day',
        imagePath: AppImages.exercise3,
        progress: 20.0,
        difficulty: 'Advanced',
      ),
    ];
  }
}
