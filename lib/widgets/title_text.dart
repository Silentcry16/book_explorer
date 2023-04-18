import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight weight;
  final double? height;
  final Color color;
  const TitleText(
      {super.key,
      required this.text,
      required this.size,
      required this.weight,
      this.height,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.urbanist(
        color: color,
        fontSize: size,
        fontWeight: weight,
        height: height,
      ),
    );
  }
}
