import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buttonIcon(
            icon: MdiIcons.home,
            text: 'Home',
            onPress: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            isSelected: selectedIndex == 0,
          ),
          _buttonIcon(
            icon: MdiIcons.compass,
            text: 'Home',
            onPress: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            isSelected: selectedIndex == 1,
          ),
          _buttonIcon(
            icon: MdiIcons.chartBox,
            text: 'Home',
            onPress: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            isSelected: selectedIndex == 2,
          ),
          _buttonIcon(
            icon: Icons.settings,
            text: 'Home',
            onPress: () {
              setState(() {
                selectedIndex = 3;
              });
            },
            isSelected: selectedIndex == 3,
          ),
        ],
      ),
    );
  }

  Widget _buttonIcon(
      {bool isSelected = false,
      required IconData icon,
      required String text,
      required VoidCallback onPress}) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onPress,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.bounceInOut,
        width: 70,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 2,
              width: 50,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: isSelected ? kSkyBlue : Colors.transparent,
                    width: 2,
                  ),
                ),
              ),
            ),
            const SizedBox(height: kDefaultPadding),
            Icon(
              icon,
              size: 30,
              color: isSelected ? kSkyBlue : kLightGrey,
            ),
            const SizedBox(height: kDefaultPadding / 4),
            Text(
              text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: isSelected ? kSkyBlue : kLightGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
