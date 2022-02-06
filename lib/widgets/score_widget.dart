import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../constants.dart';

class ScoreWidget extends StatelessWidget {
  const ScoreWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularPercentIndicator(
          animation: true,
          startAngle: 90.0,
          circularStrokeCap: CircularStrokeCap.round,
          backgroundColor: const Color(0xFFFFEFC7),
          progressColor: const Color(0xFFFCBB1C),
          radius: (size / 2) - (kDefaultPadding / 2),
          lineWidth: 15.0,
          percent: 0.78,
          center: DottedBorder(
            color: const Color(0xFFFFE8B1),
            borderType: BorderType.Circle,
            dashPattern: const [6, 10],
            strokeWidth: 4,
            radius: Radius.circular(size / 2),
            strokeCap: StrokeCap.round,
            child: SizedBox(
              width: size * .7,
              height: size * .7,
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
    );
  }
}
