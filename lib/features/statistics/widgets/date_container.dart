import 'package:fitness_tracking_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateContainerList extends StatefulWidget {
  const DateContainerList({super.key});

  @override
  DateContainerListState createState() => DateContainerListState();
}

class DateContainerListState extends State<DateContainerList> {
  late DateTime _selectedDate;

  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToCurrentDate();
    });
  }

  void _scrollToCurrentDate() {
    DateTime now = DateTime.now();
    int currentDayIndex = now.day - 1;
    const double itemWidth = 58.0;

    double offset = (currentDayIndex - 2) * itemWidth;
    if (offset < 0) offset = 0;

    _scrollController.jumpTo(offset);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    DateTime startOfMonth = DateTime(now.year, now.month, 1);
    int daysInMonth = DateTime(now.year, now.month + 1, 0).day;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              DateFormat('MMM d').format(_selectedDate),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 70,
          child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: daysInMonth,
            itemBuilder: (context, index) {
              DateTime date = startOfMonth.add(Duration(days: index));
              String dayLetter = DateFormat('E').format(date)[0];
              String dayNumber = date.day.toString();
              bool isSelected = date.day == _selectedDate.day &&
                  date.month == _selectedDate.month &&
                  date.year == _selectedDate.year;

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedDate = date;
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.primaryDark
                              : AppColors.primary,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dayLetter,
                              style: TextStyle(
                                color: isSelected
                                    ? AppColors.whiteColor
                                    : AppColors.primaryDark,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              dayNumber,
                              style: TextStyle(
                                color: isSelected
                                    ? AppColors.whiteColor
                                    : AppColors.primaryDark,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (isSelected)
                        Container(
                          margin: const EdgeInsets.only(top: 4.0),
                          height: 6,
                          width: 6,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
