import 'package:book_explore_sale/utils/dimensions.dart';
import 'package:flutter/material.dart';

import '../utils/const_color.dart';
import '../widgets/subtitle.dart';

class CustomNavigationBar extends StatefulWidget {
  final Function(int) onTap;
  const CustomNavigationBar({
    super.key,
    required this.onTap,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  List<String> navigationIcon = [
    'assets/icons/library.png',
    'assets/icons/explore.png',
    'assets/icons/cart.png',
    'assets/icons/community.png',
  ];

  List<String> navigationLabel = ['My Library', 'Explore', 'Cart', 'Community'];

  late int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.height15),
      width: Dimensions.screenwidth,
      height: Dimensions.height45 * 2,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius30),
            topRight: Radius.circular(Dimensions.radius30),
          ),
          boxShadow: const [
            BoxShadow(
                color: Colors.black26, offset: Offset(2, 2), blurRadius: 15)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < navigationIcon.length; i++) ...<Expanded>{
            Expanded(
                child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = i;
                  widget.onTap(i);
                });
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: Dimensions.height10),
                    width: currentIndex == i
                        ? Dimensions.width30
                        : Dimensions.width25,
                    height: currentIndex == i
                        ? Dimensions.height30
                        : Dimensions.height25,
                    child: Image.asset(
                      navigationIcon[i],
                      fit: BoxFit.cover,
                      color: currentIndex == i
                          ? ConstColor.primary
                          : Colors.black26,
                    ),
                  ),
                  Subtitle(
                      text: navigationLabel[i],
                      size: 16,
                      weight:
                          currentIndex == i ? FontWeight.w600 : FontWeight.w500,
                      color: currentIndex == i
                          ? ConstColor.secondary
                          : ConstColor.subtitleGrey)
                ],
              ),
            ))
          }
        ],
      ),
    );
  }
}
