import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:opensaucerer_assessment/core/widgets/schedule_card.dart';

import '../core/const/app_colors.dart';
import '../core/widgets/date_selector.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  String selectedMonth = 'November';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Learning Schedule',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.borderColor, width: 1),
                  borderRadius: BorderRadius.circular(4),
                ),
                height: 24,
                width: 93,
                child: Center(
                  child: DropdownButton<String>(
                    value: selectedMonth,
                    icon: const Icon(
                      Icons.expand_more,
                      size: 12,
                      color: AppColors.fontColor,
                    ),
                    iconSize: 24,
                    elevation: 16,
                    style: const TextStyle(
                        color: AppColors.fontColor, fontSize: 14),
                    underline: Container(
                      height: 0,
                      color: Colors.transparent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedMonth = newValue!;
                      });
                    },
                    items: <String>[
                      'January',
                      'February',
                      'March',
                      'April',
                      'May',
                      'June',
                      'July',
                      'August',
                      'September',
                      'October',
                      'November',
                      'December'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
            const Gap(24),
            const DateSelector(),
            const Gap(32),
            textTitle("Today’s Schedule"),
            const Gap(12),
            const ScheduleCard(
              title: 'IELTS Live Class',
              time: '8:30 AM - 10:30 AM',
            ),
            const Gap(14),
            const ScheduleCard(
              title: 'Computing Live Class',
              time: '8:30 AM - 10:30 AM',
            ),
            const Gap(32),
            textTitle("Upcoming"),
            const Gap(12),
            const ScheduleCard(
              title: 'IELTS Live Class',
              time: '8:30 AM - 10:30 AM',
            ),
            const Gap(14),
            const ScheduleCard(
              title: 'IELTS Live Class',
              time: '8:30 AM - 10:30 AM',
            ),
          ],
        ),
      ),
    );
  }

  Widget textTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: AppColors.fontColor),
    );
  }
}
