import 'package:book_explore_sale/models/book.dart';
import 'package:book_explore_sale/utils/dimensions.dart';
import 'package:book_explore_sale/widgets/book_item_category.dart';
import 'package:flutter/material.dart';

class GridViewCategory extends StatefulWidget {
  const GridViewCategory({super.key});

  @override
  State<GridViewCategory> createState() => _GridViewCategoryState();
}

class _GridViewCategoryState extends State<GridViewCategory> {
  final bookList = Book.bookData();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 15),
      margin: const EdgeInsets.only(top: 18),
      width: Dimensions.screenwidth,
      // height: 800,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: bookList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns in the grid
          mainAxisSpacing: 10, // Spacing between rows
          crossAxisSpacing: 10.0, // Spacing between columns
          childAspectRatio: 0.55, // Width to height ratio of each grid item
        ),
        itemBuilder: (context, i) => BookItemCategory(book: bookList[i]),
      ),
    );
  }
}
