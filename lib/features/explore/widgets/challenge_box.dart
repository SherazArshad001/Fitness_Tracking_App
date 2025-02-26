import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/models/challenge_box_model.dart';
import 'package:flutter/material.dart';

class ChallengeBox extends StatelessWidget {
  final ChallengeBoxModel challengeBoxModel;

  const ChallengeBox({
    super.key,
    required this.challengeBoxModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          color: challengeBoxModel.challengeColor,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 5,
              bottom: 5,
              child: Image.asset(
                challengeBoxModel.challengeImage,
                width: 50,
                height: 50,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  challengeBoxModel.challengeText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color:
                        challengeBoxModel.challengeText == 'Sprint\nChallenge'
                            ? AppColors.background
                            : AppColors.textPrimary,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
