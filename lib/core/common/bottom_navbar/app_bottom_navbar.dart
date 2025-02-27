import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:fitness_tracking_app/core/constants/app_text.dart';
import 'package:fitness_tracking_app/features/statistics/pages/statistics_page.dart';
import 'package:fitness_tracking_app/features/explore/pages/explore_page.dart';
import 'package:fitness_tracking_app/features/profile/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracking_app/features/home/pages/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const ExplorePage(),
    const StatisticsPage(),
    const ProfilePage(),
  ];

  final List<String> _icons = [
    AppImages.home,
    AppImages.explore,
    AppImages.analytics,
    AppImages.profile,
  ];

  final List<String> _labels = [
    AppText.home,
    AppText.explore,
    AppText.statistics,
    AppText.profile,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: AppColors.primaryDark,
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(_icons.length, (index) {
            final bool isSelected = _selectedIndex == index;
            return Flexible(
              child: GestureDetector(
                onTap: () => _onItemTapped(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: isSelected ? 100 : 50,
                  height: 36,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.primary : Colors.transparent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          _icons[index],
                          color:
                              isSelected ? AppColors.primaryDark : Colors.grey,
                          width: 24,
                          height: 24,
                        ),
                        if (isSelected) ...[
                          const SizedBox(width: 8),
                          Text(
                            _labels[index],
                            style: TextStyle(
                              color: AppColors.primaryDark,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
