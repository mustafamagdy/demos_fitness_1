import 'package:fitness_1/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'progress.dart';
import 'progress_schedule.dart';

class GoalScreen extends StatelessWidget {
  const GoalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    //Todo: calculate or get if bgImage is dark or light
    final isDarkImage = true;

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: isDarkImage
            ? SystemUiOverlayStyle.light
            : SystemUiOverlayStyle.dark,
        child: Stack(
          children: [
            _bgImage(size),
            _goalTitle(size),
            const ProgramSchedule(),
            const Progress(),
          ],
        ),
      ),
    );
  }

  Positioned _bgImage(Size size) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      height: size.height * 0.4,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/exercise6.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Positioned _goalTitle(Size size) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              children: [
                Row(
                  children: [
                    RawMaterialButton(
                      constraints: const BoxConstraints(
                        minWidth: 25,
                        minHeight: 25,
                      ),
                      fillColor: Colors.white,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      elevation: 1,
                      onPressed: () {},
                      child: const Icon(CupertinoIcons.back),
                    ),
                    const Spacer(),
                    RawMaterialButton(
                      constraints: const BoxConstraints(
                        minWidth: 25,
                        minHeight: 25,
                      ),
                      fillColor: Colors.white,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                      elevation: 1,
                      onPressed: () {},
                      child: const Icon(Icons.more_vert),
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultPadding * 2),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2),
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 65,
                  width: size.width,
                  decoration: const BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      FittedBox(
                        child: Text(
                          'Body Building',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          'Full body workout',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
