import 'dart:math';

import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/utils/dimensions.dart';
import 'package:book_explore_sale/widgets/gridview_library.dart';
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: Dimensions.width20),
                child: const Subtitle(
                    text: 'Hi Emily',
                    size: 14,
                    weight: FontWeight.w400,
                    color: ConstColor.secondary),
              ),
              SizedBox(
                height: Dimensions.height20,
              ),
              Padding(
                padding: EdgeInsets.only(left: Dimensions.width20),
                child: const TitleText(
                    text: 'My Library',
                    size: 20,
                    weight: FontWeight.w800,
                    color: ConstColor.secondary),
              ),
              const LibraryListview(),
              SizedBox(
                height: Dimensions.height35,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleText(
                        text: 'My Wishlist',
                        size: Dimensions.font20,
                        weight: FontWeight.w800,
                        color: ConstColor.primary),
                    Container(
                      alignment: Alignment.center,
                      width: Dimensions.width30 * 2,
                      height: Dimensions.height25,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimensions.height5),
                          color: Colors.white,
                          border:
                              Border.all(width: 0.5, color: Colors.black54)),
                      child: const Subtitle(
                          text: 'See More',
                          size: 10,
                          weight: FontWeight.w500,
                          color: ConstColor.primary),
                    )
                  ],
                ),
              ),
              const GridviewLibrary()
            ],
          ),
        ));
  }
}
