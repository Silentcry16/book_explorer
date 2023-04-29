import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/utils/dimensions.dart';
import 'package:book_explore_sale/widgets/subtitle.dart';
import 'package:book_explore_sale/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class LibraryListview extends StatelessWidget {
  const LibraryListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> bookImg = [
      'assets/images/afterlife.png',
      'assets/images/boys.png',
    ];
    List<String> bookname = [
      'After life',
      'Ghost boys',
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 11),
          padding: const EdgeInsets.only(left: 15),
          width: Dimensions.screenwidth,
          height: 220,
          //listview
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              width: 15,
            ),
            itemCount: 3,
            itemBuilder: (context, i) => Column(
              children: [
                //shows the last slider
                i == 2
                    ? GestureDetector(
                        onTap: () {
                          print('Discover more');
                        },
                        child: Container(
                          height: 156,
                          child: ClipRRect(
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(5),
                              // padding: const EdgeInsets.all(6),
                              child: Container(
                                // color: Colors.amber,
                                height: 156,
                                width: 117,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(Icons.add),
                                    Subtitle(
                                        text: 'Discover More',
                                        size: 12,
                                        weight: FontWeight.w600,
                                        color: ConstColor.secondary)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 117,
                            height: 156,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5)),
                            child: Image.asset(bookImg[i]),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 117,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TitleText(
                                    text: bookname[i],
                                    size: 14,
                                    weight: FontWeight.w600,
                                    color: ConstColor.secondary),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  // color: Colors.black12,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          child: LinearProgressIndicator(
                                            minHeight: 8,
                                            backgroundColor:
                                                ConstColor.subtitleGrey,
                                            color: ConstColor.secondary,
                                            value: i == 0 ? 1 : 0.5,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: Subtitle(
                                            text: i == 0
                                                ? '100%'
                                                : i == 1
                                                    ? '50%'
                                                    : '',
                                            size: 10,
                                            weight: FontWeight.w600,
                                            color: ConstColor.secondary),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
              ],
            ),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
