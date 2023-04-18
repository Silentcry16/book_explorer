import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/widgets/library_listview.dart';
import 'package:book_explore_sale/widgets/subtitle.dart';
import 'package:book_explore_sale/widgets/title_text.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class MyLibraryScreen extends StatefulWidget {
  const MyLibraryScreen({super.key});

  @override
  State<MyLibraryScreen> createState() => _MyLibraryScreenState();
}

class _MyLibraryScreenState extends State<MyLibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Subtitle(
                  text: 'Hi Emily',
                  size: 14,
                  weight: FontWeight.w400,
                  color: ConstColor.secondary),
            ),
            SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: TitleText(
                  text: 'My Library',
                  size: 20,
                  weight: FontWeight.w800,
                  color: ConstColor.secondary),
            ),
            LibraryListview()
          ],
        ));
  }
}
