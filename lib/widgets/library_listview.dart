import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/utils/dimensions.dart';
import 'package:book_explore_sale/widgets/subtitle.dart';
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
    return Container(
      margin: const EdgeInsets.only(left: 15, top: 11),
      padding: EdgeInsets.only(left: 5),
      width: Dimensions.screenwidth,
      height: 156,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          width: 15,
        ),
        itemCount: 3,
        itemBuilder: (context, i) {
          if (i == 2) {
            return GestureDetector(
              onTap: () {
                print('Discover more');
              },
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(5),
                // padding: const EdgeInsets.all(6),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: SizedBox(
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
            );
          } else {
            return Container(
              width: 117,
              height: 156,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Image.asset(bookImg[i]),
            );
          }
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
