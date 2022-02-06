import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/exercise.dart';
import '../../constants.dart';

class DailyTasks extends StatelessWidget {
  const DailyTasks({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Daily Tasks',
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
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              itemCount: exercises.length,
              itemBuilder: (ctx, idx) {
                final exercise = exercises[idx];
                return SizedBox(
                  width: size.width,
                  child: ListTile(
                    leading: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(exercise.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Padding(
                      padding:
                          const EdgeInsets.only(bottom: kDefaultPadding / 2),
                      child: Text(
                        exercise.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.clock,
                              size: 15,
                              color: Colors.green[300],
                            ),
                            const SizedBox(width: kDefaultPadding / 4),
                            Text(
                              '${exercise.duration} min',
                              style: TextStyle(
                                color: Colors.green[300],
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: kDefaultPadding / 2,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.fire,
                              size: 15,
                              color: Colors.orange[400],
                            ),
                            const SizedBox(width: kDefaultPadding / 4),
                            Text(
                              '${exercise.energy} col',
                              style: TextStyle(
                                color: Colors.orange[400],
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    trailing: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: kLightGrey,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        FontAwesomeIcons.play,
                        color: Colors.deepOrangeAccent,
                        size: 15,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
