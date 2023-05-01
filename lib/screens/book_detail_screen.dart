import 'package:book_explore_sale/models/book.dart';
import 'package:book_explore_sale/widgets/details_app_bar.dart';
import 'package:book_explore_sale/widgets/details_header.dart';
import 'package:book_explore_sale/widgets/details_list_tile.dart';
import 'package:book_explore_sale/widgets/details_progress_bar.dart';
import 'package:flutter/material.dart';

class BookDetailScreen extends StatefulWidget {
  const BookDetailScreen({Key? key}) : super(key: key);
  static const routName = '/book-detail';
  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  final List<Book> books = Book.bookData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const DetailsAppBar(),
          const DetailHead(),
          DetailsListTile(),
          DetailsProgressBar()
        ],
      ),
    );
  }
}
