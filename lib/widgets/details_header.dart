import 'package:flutter/material.dart';

class DetailHead extends StatelessWidget {
  const DetailHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 21),
      height: 212,
      width: 348,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.amber),
      child: Image.asset('assets/images/header.png'),
    );
  }
}
