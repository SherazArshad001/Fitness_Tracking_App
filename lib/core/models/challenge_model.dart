import 'dart:ui';

import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_images.dart';

class ChallengeBoxModel {
  final String challengeText;
  final String challengeImage;
  final Color challengeColor;
  ChallengeBoxModel({
    required this.challengeText,
    required this.challengeImage,
    required this.challengeColor,
  });
}

List<ChallengeBoxModel> challengeData = [
  ChallengeBoxModel(
    challengeText: 'Plank\nChallenge',
    challengeImage: AppImages.energy,
    challengeColor: AppColors.primary,
  ),
  ChallengeBoxModel(
    challengeText: 'Sprint\nChallenge',
    challengeImage: AppImages.running,
    challengeColor: AppColors.primaryDark,
  ),
  ChallengeBoxModel(
    challengeText: 'Squat\nChallenge',
    challengeImage: AppImages.bottle,
    challengeColor: AppColors.whiteColor,
  ),
];
