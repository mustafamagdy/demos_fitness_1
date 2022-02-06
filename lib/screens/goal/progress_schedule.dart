import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';

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
