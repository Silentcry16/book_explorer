import 'package:book_explore_sale/models/book.dart';
import 'package:book_explore_sale/screens/book_detail_screen.dart';
import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/widgets/subtitle.dart';
import 'package:flutter/material.dart';

class BookItemCategory extends StatelessWidget {
  final Book book;
  const BookItemCategory({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    //Single book item
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(BookDetailScreen.routName, arguments: book.id);
      },
      child: Container(
        alignment: Alignment.center,
        width: 120,
        height: 220,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //image of the book
            Container(
                width: 100,
                height: 133,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(book.image),
                    fit: BoxFit.cover,
                  ),
                )),
            //name of the book
            Subtitle(
                text: book.name,
                size: 14,
                weight: FontWeight.w600,
                color: ConstColor.secondary),

            //name of the author
            Subtitle(
                text: book.author,
                size: 12,
                weight: FontWeight.w600,
                color: ConstColor.black.withOpacity(0.5)),

            //showing stars bar
            Container(
              width: 100,
              height: 20,
              child: Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    index < book.stars ? Icons.star : Icons.star_border,
                    color: index < book.stars ? Colors.orange : Colors.grey,
                    size: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
