import 'package:book_explore_sale/screens/book_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        BookDetailScreen.routName: (context) => BookDetailScreen(),
      },
    );
  }
}
