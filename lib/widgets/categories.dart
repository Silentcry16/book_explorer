import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/utils/dimensions.dart';
import 'package:book_explore_sale/widgets/subtitle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentIndex = 0;

  List<String> categoryName = [
    'Arts',
    'Biography',
    'Romance',
    'Thriller',
    'Fiction',
    'Crime',
    'Movies',
    'Religious',
    'Philosophy',
    'History',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 5),
      // color: Colors.amber,
      height: 26,
      width: Dimensions.screenwidth,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = i;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Subtitle(
                        text: categoryName[i],
                        size: 14,
                        weight: FontWeight.w600,
                        color: currentIndex == i
                            ? ConstColor.secondary
                            : ConstColor.black.withOpacity(0.5)),
                    const SizedBox(
                      height: 4,
                    ),
                    currentIndex == i
                        ? Container(
                            height: 4,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ConstColor.primary),
                          )
                        : SizedBox.shrink()
                  ],
                ),
              ),
          separatorBuilder: (context, index) => const SizedBox(width: 15),
          itemCount: categoryName.length),
    );
  }
}
