import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/features/splash/widgets/app_button.dart';
import 'package:flutter/material.dart';

class SplashBottomContent extends StatelessWidget {
  const SplashBottomContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Wherever you are health is number one",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                color: AppColors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            Text("There is no instant way to a healthy life"),
            SizedBox(
              height: 10,
            ),
            AppButton()
          ],
        ),
      ),
    );
  }
}
