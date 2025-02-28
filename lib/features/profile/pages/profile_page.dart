import 'package:flutter/material.dart';
import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:fitness_tracking_app/core/constants/app_images.dart';
import 'package:fitness_tracking_app/core/constants/app_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  ScrollController scrollController = ScrollController();
  Color appBarColor = AppColors.background;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      double offset = scrollController.offset;
      setState(() {
        appBarColor =
            offset > 50 ? AppColors.primaryDark : AppColors.background;
      });
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        title: Center(
          child: Text(
            "Profile",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: appBarColor == AppColors.background
                  ? AppColors.textPrimary
                  : Colors.white,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 85,
                    backgroundColor: AppColors.primary,
                    child: ClipOval(
                      child: Image.asset(
                        AppImages.userImage,
                        width: 160,
                        height: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Sheraz Baloch",
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Text(
                        "(Flutter Developer)",
                        style: TextStyle(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                LargeText(largeHintText: "About Me"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "I am a Flutter Developer with 2+ years of experience in building dynamic, scalable, and high-performance mobile applications. "
                    "I specialize in Clean Architecture, BLoC state management, Firebase, API integration, and secure authentication (JWT & Cookie management). "
                    "My goal is to create intuitive and efficient apps that solve real-world problems.",
                    style: TextStyle(
                      color: AppColors.primaryDark,
                      fontSize: 18,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                LargeText(largeHintText: "Experience"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bulletPoint(
                          "Developed multiple apps across various domains, including real estate, e-commerce, healthcare, and weather forecasting."),
                      bulletPoint(
                          "Implemented state management solutions (BLoC, Provider) to enhance performance and maintainability."),
                      bulletPoint(
                          "Integrated Firebase services for real-time databases, authentication, and push notifications."),
                      bulletPoint(
                          "Focused on clean code practices, UI/UX optimization, and app security."),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                LargeText(largeHintText: "Past Projects"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bulletPoint(
                          "Senior Housing Central – An old age home management app."),
                      bulletPoint(
                          "CarePoint App – A healthcare platform for booking doctor appointments."),
                      bulletPoint(
                          "Real Estate App – A property listing app ensuring transparency and security."),
                      bulletPoint(
                          "E-commerce Shopping App – A marketplace for clothes, accessories, and beauty products."),
                      bulletPoint(
                          "Coffee Ordering App – A seamless experience for ordering coffee and snacks."),
                      bulletPoint(
                          "Weather App – Real-time weather updates with hourly forecasts."),
                      bulletPoint(
                          "Portfolio Website – A platform showcasing employees' skills."),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                LargeText(largeHintText: "Let's Connect!"),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    "I am open to freelance, remote, and full-time opportunities. "
                    "If you’re looking for a dedicated Flutter developer, let’s discuss how we can collaborate!",
                    style: TextStyle(
                      color: AppColors.primaryDark,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ",
              style: TextStyle(fontSize: 20, color: AppColors.primaryDark)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: AppColors.primaryDark),
            ),
          ),
        ],
      ),
    );
  }
}
