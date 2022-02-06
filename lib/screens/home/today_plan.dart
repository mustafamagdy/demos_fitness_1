import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../constants.dart';

class TodayPlan extends StatelessWidget {
  const TodayPlan({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: size.width,
      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color(0xFFA76FFF),
            const Color(0xEEBD92FF).withOpacity(0.95),
          ],
          stops: const [0.7, 0.99],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'My Plan For Today',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '1/7 Complete',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(width: kDefaultPadding),
          Flexible(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 4),
              width: double.maxFinite,
              height: double.maxFinite,
              // Color(0xFF904AFF)
              child: CircularPercentIndicator(
                animation: true,
                startAngle: 90.0,
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: const Color(0xFFBC93FF),
                progressColor: const Color(0xFF904AFF),
                radius: 50.0,
                lineWidth: 12.0,
                percent: 0.25,
                center: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: const [
                      Text(
                        '25',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
