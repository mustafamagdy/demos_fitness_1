import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../constants.dart';

class Progress extends StatelessWidget {
  const Progress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.4 - 110,
      left: kDefaultPadding,
      right: kDefaultPadding,
      height: 90,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 1),
              blurRadius: 10,
              spreadRadius: 5,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Level',
                      style: TextStyle(
                        color: kLightGrey,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.deepOrangeAccent,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Text(
                          'Beginner',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const Icon(CupertinoIcons.forward)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding / 4),
                height: 55,
                width: 2,
                color: kLightGrey.withOpacity(0.2),
              ),
              const SizedBox(width: kDefaultPadding / 2),
              Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Progress',
                          style: TextStyle(
                            color: kLightGrey,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          '0%',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    CircularPercentIndicator(
                      animation: true,
                      startAngle: 90.0,
                      circularStrokeCap: CircularStrokeCap.round,
                      backgroundColor: Colors.grey.withOpacity(0.2),
                      progressColor: Colors.deepOrange,
                      radius: 20.0,
                      lineWidth: 2.0,
                      percent: 0.01,
                      center: const Center(
                        child: Icon(
                          FontAwesomeIcons.trophy,
                          color: Colors.amber,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
