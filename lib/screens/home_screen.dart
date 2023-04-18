import 'package:book_explore_sale/widgets/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../screens/my_library_screen.dart';
import '../screens/explore_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  //updates the index
  void _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          MyLibraryScreen(),
          ExploreScreen(),
        ],
      ),
      bottomNavigationBar:
          CustomNavigationBar( onTap: _onTap),
    );
  }
}
