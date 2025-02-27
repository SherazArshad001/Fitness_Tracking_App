import 'package:fitness_tracking_app/core/constants/app_images.dart';

class Exercise {
  final String title;
  final String duration;
  final String level;
  final String imagePath;

  Exercise({
    required this.title,
    required this.duration,
    required this.level,
    required this.imagePath,
  });
}

List<Exercise> exerciseData = [
  Exercise(
      title: "Belly Fat Burner",
      duration: "10 Min",
      level: "Beginner",
      imagePath: AppImages.exercise1),
  Exercise(
      title: "Full Body Workout",
      duration: "15 Min",
      level: "Intermediate",
      imagePath: AppImages.exercise2),
  Exercise(
      title: "Leg Strength",
      duration: "12 Min",
      level: "Advanced",
      imagePath: AppImages.exercise3),
  Exercise(
    title: "Arm Toning",
    duration: "8 Min",
    level: "Beginner",
    imagePath: AppImages.exercise4,
  ),
];
