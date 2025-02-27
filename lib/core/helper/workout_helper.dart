import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:fitness_tracking_app/core/models/popular_workout_model.dart';

class WorkoutCardHelper {
  static List<PopularWorkoutCardModel> getWorkoutCards() {
    return const [
      PopularWorkoutCardModel(
        backgroundImage: AppImages.cardImage1,
        title: 'Lower Body\nTraining',
        icon1: AppImages.time,
        text1: '30 mins',
        icon2: AppImages.flame,
        text2: '500 kcal',
      ),
      PopularWorkoutCardModel(
        backgroundImage: AppImages.cardImage2,
        title: 'Upper Body\nWorkout',
        icon1: AppImages.time,
        text1: '30 mins',
        icon2: AppImages.flame,
        text2: '500 kcal',
      ),
      PopularWorkoutCardModel(
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
