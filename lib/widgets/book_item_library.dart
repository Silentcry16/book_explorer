import 'package:book_explore_sale/models/book.dart';
import 'package:book_explore_sale/screens/book_detail_screen.dart';
import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/utils/dimensions.dart';
import 'package:book_explore_sale/widgets/title_text.dart';
import 'package:flutter/material.dart';

class BookItemLibrary extends StatelessWidget {
  final Book book;
  const BookItemLibrary({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(BookDetailScreen.routName),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 60,
            height: 85,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Dimensions.height5),
              child: Image.asset(
                book.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(
                        text: book.name,
                        size: 12,
                        weight: FontWeight.w700,
                        color: ConstColor.secondary),
                    TitleText(
                        text: book.author,
                        size: 12,
                        weight: FontWeight.w700,
                        color: Colors.black45),
                  ],
                ),
                SizedBox(
                  height: 29,
                  child: Container(
                    width: Dimensions.screenwidth / 3.92,
                    height: Dimensions.height20,
                    child: Row(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          index < book.stars ? Icons.star : Icons.star_border,
                          color:
                              index < book.stars ? Colors.orange : Colors.grey,
                          size: 14,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
