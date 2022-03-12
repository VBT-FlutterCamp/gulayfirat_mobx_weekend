import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleGenerator extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const TextStyleGenerator(
      this.text, this.fontSize, this.color, this.fontWeight);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
