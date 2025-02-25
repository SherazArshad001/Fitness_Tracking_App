import 'package:flutter/material.dart';
import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/helper_text.dart';
import 'package:fitness_tracking_app/core/models/small_card_model.dart';
import 'package:fitness_tracking_app/features/explore/widgets/explore_main_card.dart';
import 'package:fitness_tracking_app/features/explore/widgets/explore_small_card.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ExploreCard(),
              const SizedBox(height: 10),
              const LargeText(largeHintText: "Best For You"),
              const SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: exerciseData.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ExploreSmallCard(
                      exercise: exerciseData[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
