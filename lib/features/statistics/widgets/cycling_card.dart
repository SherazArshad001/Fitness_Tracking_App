
import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

class CyclingCard extends StatelessWidget {
  const CyclingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryDark,
      child: SizedBox(
        height: 218,
        width: 222,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(6),
                        color: AppColors.background,
                      ),
                      child:
                          Image.asset(AppImages.cycleImage),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Cycling',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              AppImages.mapImage,
            ),
          ],
        ),
      ),
    );
  }
}
