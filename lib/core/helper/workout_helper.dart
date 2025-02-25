import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:fitness_tracking_app/core/model/workout_model.dart';

class WorkoutCardHelper {
  static List<WorkoutCard> getWorkoutCards() {
    return const [
      WorkoutCard(
        backgroundImage: AppImages.cardImage1,
        title: 'Lower Body\nTraining',
        icon1: AppImages.time,
        text1: '30 mins',
        icon2: AppImages.flame,
        text2: '500 kcal',
      ),
      WorkoutCard(
        backgroundImage: AppImages.cardImage2,
        title: 'Upper Body\nWorkout',
        icon1: AppImages.time,
        text1: '30 mins',
        icon2: AppImages.flame,
        text2: '500 kcal',
      ),
      WorkoutCard(
        backgroundImage: AppImages.cardImage3,
        title: 'Full Body\nRoutine',
        icon1: AppImages.time,
        text1: '30 mins',
        icon2: AppImages.flame,
        text2: '500 kcal',
      ),
    ];
  }
}
