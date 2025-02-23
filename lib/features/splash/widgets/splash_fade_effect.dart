
import 'package:flutter/material.dart';

class SplashFadeEffect extends StatelessWidget {
  const SplashFadeEffect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(0.0),
              Colors.white.withOpacity(0.5),
              Colors.white,
            ],
          ),
        ),
      ),
    );
  }
}
