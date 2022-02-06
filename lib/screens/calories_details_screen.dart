import 'package:dotted_border/dotted_border.dart';
import 'package:fitness_1/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CaloriesDetailsScreen extends StatelessWidget {
  const CaloriesDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final activitySectionWidth = (size.width - kDefaultPadding * 5) / 3;
    var height = size.height;
    final centerWidgetSize = 240.0;
    var appBar = AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border:
                    Border.all(color: kLightGrey.withOpacity(0.3), width: 1),
              ),
              child: const Icon(CupertinoIcons.back, color: Colors.black),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                'Calories Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border:
                    Border.all(color: kLightGrey.withOpacity(0.3), width: 1),
              ),
              child: const Icon(
                Icons.edit,
                color: Colors.orange,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
    var space1 = const SizedBox(height: kDefaultPadding);

    height = height -
        appBar.preferredSize.height -
        space1.height! -
        350 -
        kDefaultPadding -
        100 -
        kDefaultPadding -
        kDefaultPadding -
        (2 * 50);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            space1,
            const Text(
              'Keep Going!',
              style: TextStyle(
                color: kLightGrey,
                fontSize: 16,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 2,
              ),
              child: Text(
                'You Have To Eat More Calories',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 2,
                vertical: kDefaultPadding,
              ),
              width: centerWidgetSize,
              height: centerWidgetSize,
              decoration: BoxDecoration(
                color: const Color(0xFFFFF5E0),
                borderRadius: BorderRadius.circular(centerWidgetSize / 2),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularPercentIndicator(
                    animation: true,
                    startAngle: 90.0,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: const Color(0xFFFFEFC7),
                    progressColor: const Color(0xFFFCBB1C),
                    radius: (centerWidgetSize / 2) - (kDefaultPadding / 2),
                    lineWidth: 15.0,
                    percent: 0.78,
                    center: DottedBorder(
                      color: const Color(0xFFFFE8B1),
                      borderType: BorderType.Circle,
                      dashPattern: const [6, 10],
                      strokeWidth: 4,
                      radius: Radius.circular(centerWidgetSize / 2),
                      strokeCap: StrokeCap.round,
                      child: SizedBox(
                        width: centerWidgetSize * .7,
                        height: centerWidgetSize * .7,
                        // padding: const EdgeInsets.all(kDefaultPadding),

                        child: Padding(
                          padding: const EdgeInsets.all(kDefaultPadding),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(
                                FontAwesomeIcons.fire,
                                color: Colors.amber,
                                size: 32,
                              ),
                              Text(
                                '156',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                ),
                              ),
                              Text(
                                'Calories',
                                style: TextStyle(
                                  color: kLightGrey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My Activity',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Text(
                      'Today',
                      style: TextStyle(
                          color: kSkyBlue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: kDefaultPadding / 4),
                    Transform.rotate(
                      angle: math.pi / 3,
                      child: const Icon(
                        CupertinoIcons.triangle_fill,
                        color: kSkyBlue,
                        size: 10,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: activitySectionWidth,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Carbs',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '100g',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kLightGrey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '32%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.purpleAccent,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: kDefaultPadding / 2),
                      Stack(
                        children: [
                          Container(
                            height: 4,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          FractionallySizedBox(
                            widthFactor: 0.32,
                            child: Container(
                              height: 4,
                              color: Colors.purpleAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: activitySectionWidth,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Fat',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '100g',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kLightGrey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '28%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrangeAccent,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: kDefaultPadding / 2),
                      Stack(
                        children: [
                          Container(
                            height: 4,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          FractionallySizedBox(
                            widthFactor: 0.28,
                            child: Container(
                              height: 4,
                              color: Colors.deepOrangeAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: activitySectionWidth,
                  height: 80,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Protein',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '100g',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kLightGrey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            '28%',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurpleAccent,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: kDefaultPadding / 2),
                      Stack(
                        children: [
                          Container(
                            height: 4,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          FractionallySizedBox(
                            widthFactor: 0.28,
                            child: Container(
                              height: 4,
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: kDefaultPadding / 2),
            Row(
              children: const [
                Text(
                  'BreakFast',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kLightGrey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height,
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (ctx, idx) {
                  return ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: Container(
                      padding: const EdgeInsets.all(kDefaultPadding / 4),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.redAccent.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset('assets/images/food1.png'),
                    ),
                    title: const Text(
                      'Apple',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: const Text(
                      '2 apples a day',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(
                            FontAwesomeIcons.fire,
                            color: Colors.orange,
                            size: 15,
                          ),
                          Text(
                            '40 Calories in',
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
