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

  static List<Exercise> exerciseData = [
    Exercise(
        title: "Belly Fat Burner",
        duration: "10 Min",
        level: "Beginner",
        imagePath: AppImages.exercise1),
    Exercise(
        title: "Loss Fat",
        duration: "15 Min",
        level: "Intermediate",
        imagePath: AppImages.exercise2),
    Exercise(
        title: "Plank",
        duration: "12 Min",
        level: "Advanced",
        imagePath: AppImages.exercise3),
    Exercise(
      title: "Build wide",
      duration: "8 Min",
      level: "Beginner",
      imagePath: AppImages.exercise4,
    ),
    Exercise(
        title: "Leg Exercise",
        duration: "10 Min",
        level: "Beginner",
        imagePath: AppImages.exercise5),
    Exercise(
        title: "Backward lun",
        duration: "15 Min",
        level: "Intermediate",
        imagePath: AppImages.exercise6),
    Exercise(
        title: "Leg Strength",
        duration: "12 Min",
        level: "Advanced",
        imagePath: AppImages.exercise7),
    Exercise(
      title: "Arm Toning",
      duration: "8 Min",
      level: "Beginner",
      imagePath: AppImages.exercise8,
    ),
  ];
}
