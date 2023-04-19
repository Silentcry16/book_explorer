import 'package:book_explore_sale/models/book.dart';
import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/utils/dimensions.dart';
import 'package:book_explore_sale/widgets/subtitle.dart';
import 'package:flutter/material.dart';

class BookItemLibrary extends StatelessWidget {
  final Book book;
  const BookItemLibrary({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions.screenwidth / 3.08,
      height: Dimensions.screenHeight / 8.92,
      // color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            // color: Colors.black,
            width: Dimensions.screenwidth / 5.6,
            height: Dimensions.screenHeight / 6.48,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Dimensions.height5),
              child: Image.asset(
                book.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Subtitle(
                      text: book.name,
                      size: Dimensions.font20 / 2,
                      weight: FontWeight.w600,
                      color: ConstColor.secondary),
                  Subtitle(
                      text: book.author,
                      size: Dimensions.font20 / 2,
                      weight: FontWeight.w600,
                      color: Colors.black54),
                ],
              ),
              Container(
                width: Dimensions.screenwidth / 3.92,
                height: Dimensions.height20,
                child: Row(
                  children: List.generate(
                    5,
                    (index) => Icon(
                      index < book.stars ? Icons.star : Icons.star_border,
                      color: index < book.stars ? Colors.orange : Colors.grey,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
