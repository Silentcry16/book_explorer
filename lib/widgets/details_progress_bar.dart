import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/widgets/title_text.dart';
import 'package:flutter/material.dart';

class DetailsProgressBar extends StatefulWidget {
  const DetailsProgressBar({super.key});

  @override
  State<DetailsProgressBar> createState() => _DetailsProgressBarState();
}

class _DetailsProgressBarState extends State<DetailsProgressBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: TitleText(
                  text: 'About',
                  size: selectedIndex == 0 ? 14 : 12,
                  weight:
                      selectedIndex == 0 ? FontWeight.w900 : FontWeight.w600,
                  color: Colors.black),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
              child: TitleText(
                  text: 'Reviews',
                  size: selectedIndex == 1 ? 14 : 12,
                  weight:
                      selectedIndex == 1 ? FontWeight.w900 : FontWeight.w600,
                  color: Colors.black),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
              child: TitleText(
                  text: 'Author',
                  size: selectedIndex == 2 ? 14 : 12,
                  weight:
                      selectedIndex == 2 ? FontWeight.w900 : FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 319,
              height: 3,
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(2)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 70,
                  height: 3,
                  decoration: BoxDecoration(
                      color: selectedIndex == 0
                          ? ConstColor.primary
                          : Colors.transparent),
                ),
                Container(
                  width: 70,
                  height: 3,
                  decoration: BoxDecoration(
                      color: selectedIndex == 1
                          ? ConstColor.primary
                          : Colors.transparent),
                ),
                Container(
                  width: 70,
                  height: 3,
                  decoration: BoxDecoration(
                      color: selectedIndex == 2
                          ? ConstColor.primary
                          : Colors.transparent),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
