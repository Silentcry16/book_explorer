import 'package:book_explore_sale/utils/const_color.dart';
import 'package:book_explore_sale/utils/dimensions.dart';
import 'package:book_explore_sale/widgets/book_item_category.dart';
import 'package:book_explore_sale/widgets/categories.dart';
import 'package:book_explore_sale/widgets/custom_app_bar.dart';
import 'package:book_explore_sale/widgets/gridview_category.dart';
import 'package:book_explore_sale/widgets/title_text.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_slider.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: Dimensions.screenHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomSlider(),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 17, bottom: 5),
                child: const TitleText(
                  text: 'Categories',
                  size: 20,
                  weight: FontWeight.w800,
                  color: ConstColor.secondary,
                ),
              ),
              Categories(),
              GridViewCategory(),
            ],
          ),
        ),
      ),
    );
  }
}


/////////////  the code below Also works ;)  , thanks to ChatGpt /////////////


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../models/book.dart';
// import '../utils/const_color.dart';
// import '../widgets/book_item_category.dart';
// import '../widgets/categories.dart';
// import '../widgets/custom_app_bar.dart';
// import '../widgets/custom_slider.dart';
// import '../widgets/title_text.dart';

// class ExploreScreen extends StatefulWidget {
//   const ExploreScreen({Key? key}) : super(key: key);

//   @override
//   State<ExploreScreen> createState() => _ExploreScreenState();
// }

// class _ExploreScreenState extends State<ExploreScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(),
//       body: CustomScrollView(
//         slivers: [
//           SliverToBoxAdapter(
//             child: const CustomSlider(),
//           ),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.only(left: 20, top: 17, bottom: 5),
//               child: const TitleText(
//                 text: 'Categories',
//                 size: 20,
//                 weight: FontWeight.w800,
//                 color: ConstColor.secondary,
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Categories(),
//           ),
//           SliverPadding(
//             padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
//             sliver: SliverGrid(
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 3, // Number of columns in the grid
//                 mainAxisSpacing: 10, // Spacing between rows
//                 crossAxisSpacing: 10, // Spacing between columns
//                 childAspectRatio:
//                     0.55, // Width to height ratio of each grid item
//               ),
//               delegate: SliverChildBuilderDelegate(
//                 (BuildContext context, int index) {
//                   final book = Book.bookData()[index];
//                   return BookItemCategory(book: book);
//                 },
//                 childCount: Book.bookData().length,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
