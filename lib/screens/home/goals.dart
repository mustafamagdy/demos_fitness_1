import 'package:fitness_1/models/goal.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';

class Goals extends StatelessWidget {
  const Goals({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Start New Goal',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                TextButton(
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      color: kSkyBlue,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(left: kDefaultPadding),
                scrollDirection: Axis.horizontal,
                itemCount: goals.length,
                itemBuilder: (ctx, idx) {
                  final goal = goals[idx];
                  return Container(
                    margin: const EdgeInsets.only(right: kDefaultPadding),
                    width: 270,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(goal.image),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 130,
                          right: 20,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              FontAwesomeIcons.solidArrowAltCircleRight,
                              color: kOrange,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 140 + kDefaultPadding,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  goal.title,
                                  style: const TextStyle(
                                    color: kDarkBlue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                                const SizedBox(height: kDefaultPadding / 4),
                                Text(
                                  goal.subtitle,
                                  style: const TextStyle(
                                    color: kLightGrey,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: kDefaultPadding),
                                Wrap(
                                  children: [
                                    Container(
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color:
                                            Colors.greenAccent.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                            color: Colors.green, width: 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: kDefaultPadding / 4),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              FontAwesomeIcons.clock,
                                              size: 20,
                                              color: Colors.green,
                                            ),
                                            const SizedBox(
                                                width: kDefaultPadding / 4),
                                            Text(
                                              '${goal.duration} min',
                                              style: const TextStyle(
                                                color: Colors.green,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: kDefaultPadding / 2),
                                    Container(
                                      height: 35,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent
                                            .withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(
                                            color: Colors.orange, width: 1),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: kDefaultPadding / 4),
                                        child: Row(
                                          children: [
                                            const Icon(
                                              FontAwesomeIcons.fire,
                                              size: 20,
                                              color: Colors.orange,
                                            ),
                                            const SizedBox(
                                                width: kDefaultPadding / 4),
                                            Text(
                                              '${goal.energy} col',
                                              style: const TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: kDefaultPadding / 4),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
