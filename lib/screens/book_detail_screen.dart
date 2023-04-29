import 'package:book_explore_sale/widgets/details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailScreen extends StatefulWidget {
  const BookDetailScreen({super.key});
  static const routName = '/book-detail';
  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          DetailsAppBar(),
        ],
      ),
    );
  }
}
