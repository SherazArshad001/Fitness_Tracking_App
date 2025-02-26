import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/helper_text.dart';
import 'package:fitness_tracking_app/core/models/small_card_model.dart';
import 'package:fitness_tracking_app/features/explore/widgets/explore_main_card.dart';
import 'package:fitness_tracking_app/features/explore/widgets/explore_small_card.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExploreCard(),
              SizedBox(
                height: 10,
              ),
              LargeText(largeHintText: "Best For you"),
              SizedBox(
                height: 10,
              ),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: exerciseData.length,
                itemBuilder: (BuildContext context, int index) {
                  return ExploreSmallCard(
                    exercise: exerciseData[index],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
