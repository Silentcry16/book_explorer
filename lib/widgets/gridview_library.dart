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
      margin: EdgeInsets.symmetric(
          horizontal: Dimensions.width10, vertical: Dimensions.height10),
      width: Dimensions.screenwidth,
      // height: 500,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        itemCount: bookList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: Dimensions.screenwidth / 130.66,
            mainAxisSpacing: Dimensions.height10,
            childAspectRatio: 2,
            mainAxisExtent: Dimensions.screenHeight / 6.48),
        itemBuilder: (context, i) => BookItemLibrary(book: bookList[i]),
      ),
    );
  }
}
