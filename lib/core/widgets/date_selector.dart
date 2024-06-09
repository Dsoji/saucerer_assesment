import 'package:flutter/material.dart';
import 'package:opensaucerer_assessment/core/const/app_colors.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({super.key});

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  // Define the days of the week and their corresponding dates
  final days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final dates = ['11', '12', '13', '14', '15', '16', '17'];

  // Initially highlighted day and date
  int highlightedIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(days.length, (index) {
          final isSelected = index == highlightedIndex;
          return GestureDetector(
            onTap: () {
              setState(() {
                highlightedIndex = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color.fromRGBO(226, 217, 243, 1)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: [
                  Text(
                    days[index],
                    style: const TextStyle(
                      color: AppColors.fontColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    dates[index],
                    style: const TextStyle(
                      color: AppColors.fontColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
