import 'package:fitness_tracking_app/core/models/challenge_model.dart';
import 'package:fitness_tracking_app/features/explore/widgets/challenge_box.dart';
import 'package:flutter/material.dart';

import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_text.dart';
import 'package:fitness_tracking_app/core/models/exercise_card_model.dart';
import 'package:fitness_tracking_app/features/explore/widgets/explore_main_card.dart';
import 'package:fitness_tracking_app/features/explore/widgets/explore_exercise_card.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ExploreMainCard(),
                const SizedBox(height: 10),
                const LargeText(largeHintText: "Best For You"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 150,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.3,
                      crossAxisSpacing: 0,
                      mainAxisSpacing: 0,
                    ),
                    itemCount: exerciseData.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ExploreExerciseCard(
                        exercise: exerciseData[index],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                const LargeText(largeHintText: "Challenge"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: challengeData.length,
                    itemBuilder: (context, index) {
                      return ChallengeBox(
                        challengeBoxModel: challengeData[index],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
