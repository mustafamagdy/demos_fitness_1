import 'package:fitness_1/models/exercise.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import 'exercises.dart';
import 'home_app_bar.dart';
import 'today_plan.dart';
import 'goals.dart';
import 'bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color(0xFFEBEBEC),
            ],
            stops: [0.0, 0.7],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  SafeArea(
                    child: HomeAppBar(size: size),
                    bottom: false,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(height: kDefaultPadding),
                          TodayPlan(size: size),
                          const SizedBox(height: kDefaultPadding),
                          Goals(size: size),
                          const SizedBox(height: kDefaultPadding),
                          DailyTasks(size: size),
                          const SizedBox(height: kDefaultPadding),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: const BottomNavBar(),
    );
  }
}
