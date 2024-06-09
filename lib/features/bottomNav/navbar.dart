import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:opensaucerer_assessment/core/const/app_colors.dart';
import 'package:opensaucerer_assessment/features/bottomNav/bottom_nav.dart';
import 'package:opensaucerer_assessment/features/schedule_screen.dart';

class NaviBar extends StatefulWidget {
  const NaviBar({
    super.key,
  });

  @override
  State<NaviBar> createState() => _NaviBarState();
}

class _NaviBarState extends State<NaviBar> {
  late List<Widget> pageList = const [
    ScheduleScreen(),
    ScheduleScreen(),
    ScheduleScreen(),
    ScheduleScreen(),
    ScheduleScreen(),
  ];
  int pageIndex = 3;
  Color color = AppColors.accentColor;
  void changePage(index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pageList[pageIndex],
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 64,
        elevation: 0,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNav(
              index: 0,
              onTap: () {
                changePage(0);
              },
              icon: Icons.dashboard,
              label: 'Dashboard',
              color: pageIndex == 0
                  ? AppColors.primaryColor
                  : AppColors.accentColor,
            ),
            BottomNav(
              index: 1,
              onTap: () {
                changePage(1);
              },
              icon: Icons.cast_for_education_rounded,
              label: 'Learn',
              color: pageIndex == 1
                  ? AppColors.primaryColor
                  : AppColors.accentColor,
            ),
            // Gap(20),
            BottomNav(
              index: 2,
              onTap: () {
                changePage(2);
              },
              icon: Icons.monitor,
              label: 'CBT',
              color: pageIndex == 2
                  ? AppColors.primaryColor
                  : AppColors.accentColor,
            ),
            BottomNav(
              index: 3,
              onTap: () {
                changePage(3);
              },
              icon: Icons.calendar_month_outlined,
              label: 'Schedule',
              color: pageIndex == 3
                  ? AppColors.primaryColor
                  : AppColors.accentColor,
            ),
            BottomNav(
              index: 4,
              onTap: () {
                changePage(4);
              },
              icon: Icons.person_outline,
              label: 'Profile',
              color: pageIndex == 4
                  ? AppColors.primaryColor
                  : AppColors.accentColor,
            ),
          ],
        ),
      ),
    );
  }
}

class FabCont extends StatelessWidget {
  final Color? color;
  final String text;
  final IconData icon;

  const FabCont({
    super.key,
    this.color,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      width: 55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0), color: color),
            child: Center(
              child: Icon(icon, color: Colors.white, size: 16),
            ),
          ),
          const Gap(8),
          Text(
            text,
            style: const TextStyle(
              color: AppColors.primaryColor,
              fontSize: 9,
              fontFamily: 'Open Sans',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
