import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/utils/dimensions.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        margin: const EdgeInsets.only(bottom: 10, top: 10),
        width: Dimensions.screenwidth,
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('assets/icons/menu.png'),

            //Search Box
            Container(
              // alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: const Color(0XFFF6F5FA),
                borderRadius: BorderRadius.circular(15),
              ),
              width: 212,
              height: 36,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // TextField
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    width: 158,
                    // color: Colors.amber,
                    child: const TextField(
                      textAlign: TextAlign.left,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Search a book',
                      ),
                    ),
                  ),
                  //search button
                  GestureDetector(
                      onTap: () {},
                      child: Image.asset('assets/icons/search.png')),
                ],
              ),
            ),
            Image.asset('assets/icons/scan.png'),
            Image.asset('assets/icons/alarm.png')
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
