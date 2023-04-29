import 'package:book_explore_sale/models/book.dart';
import 'package:flutter/material.dart';

import '../utils/dimensions.dart';
import '../widgets/book_item_library.dart';

class GridviewLibrary extends StatefulWidget {
  const GridviewLibrary({super.key});

  @override
  State<GridviewLibrary> createState() => _GridviewLibraryState();
}

class _GridviewLibraryState extends State<GridviewLibrary> {
  final bookList = Book.myWishList();
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: bookList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 10,
            childAspectRatio: 10,
            mainAxisExtent: 85),
        itemBuilder: (context, i) => BookItemLibrary(book: bookList[i]),
      ),
    );
  }
}
