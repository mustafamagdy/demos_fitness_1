import 'package:fitness_1/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
                        )),
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

class ProgramSchedule extends StatelessWidget {
  final weeks = 4;
  const ProgramSchedule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      top: size.height * 0.4 - 70,
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.only(
          top: kDefaultPadding,
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(30),
            right: Radius.circular(30),
          ),
        ),
        child: ListView.builder(
          itemCount: weeks,
          itemBuilder: (ctx, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Week ${index + 1}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                        text: '${index + 1}',
                        style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                        ),
                        children: [
                          TextSpan(
                            text: '/$weeks',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Wrap(
                  spacing: 7,
                  children: List.generate(
                    8,
                    (idx) {
                      return SizedBox(
                        width: (idx + 1) % 4 != 0 ? 80 : 60,
                        height: 80,
                        child: Row(
                          children: [
                            CircleAvatar(
                              minRadius: 25,
                              backgroundColor: index == 0 && idx == 0
                                  ? Colors.deepOrangeAccent
                                  : Colors.grey.shade200,
                              child: idx != 7
                                  ? Text(
                                      '${idx + 1}',
                                      style: TextStyle(
                                        color: index == 0 && idx == 0
                                            ? Colors.white
                                            : Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    )
                                  : const Icon(
                                      FontAwesomeIcons.trophy,
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                            ),
                            const SizedBox(width: 5),
                            if ((idx + 1) % 4 != 0)
                              const Icon(
                                CupertinoIcons.forward,
                                color: kLightGrey,
                                size: 20,
                              ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                if (index == 0)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultPadding / 2,
                      vertical: kDefaultPadding,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const FittedBox(
                        child: Text(
                          'Start',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(kSkyBlue),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 7,
                            vertical: kDefaultPadding * 0.7,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
