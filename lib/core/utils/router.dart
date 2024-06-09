import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';
import 'package:opensaucerer_assessment/features/bottomNav/navbar.dart';
import 'package:opensaucerer_assessment/features/schedule_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const NaviBar();
      },
    ),
    GoRoute(
      path: '/scheduleScreen',
      builder: (BuildContext context, GoRouterState state) {
        return const ScheduleScreen();
      },
    ),
    GoRoute(
      path: '/courseDetails',
      builder: (BuildContext context, GoRouterState state) {
        return const ScheduleScreen();
      },
    ),
  ],
);
