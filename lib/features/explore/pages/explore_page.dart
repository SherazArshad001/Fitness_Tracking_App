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
    final List<Exercise> firstFourProducts =
        Exercise.exerciseData.take(4).toList();
    final List<Exercise> remainingProducts =
        Exercise.exerciseData.skip(4).toList();

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
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2.3,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: firstFourProducts.length,
                  itemBuilder: (context, index) {
                    return ExploreExerciseCard(
                      exercise: firstFourProducts[index],
                    );
                  },
                ),
                const SizedBox(height: 10),
                const LargeText(largeHintText: "Challenge"),
                const SizedBox(height: 10),
                SizedBox(
                  height: 100,
                  child: ListView.separated(
                    padding: const EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: challengeData.length,
                    itemBuilder: (context, index) {
                      return ChallengeBox(
                        challengeBoxModel: challengeData[index],
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                  ),
                ),
                const SizedBox(height: 10),
                const LargeText(largeHintText: "Fast Warmup"),
                const SizedBox(height: 10),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2.3,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: remainingProducts.length,
                  itemBuilder: (context, index) {
                    return ExploreExerciseCard(
                      exercise: remainingProducts[index],
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
