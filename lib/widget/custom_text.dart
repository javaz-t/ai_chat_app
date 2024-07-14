import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight bolt;
  final Color color;
  final bool underline;
  final TextAlign textAlign;
  const CustomText(
      {super.key,
        required this.text,
        required this.size,
        this.bolt = FontWeight.w500,
        this.color = Colors.black,
        this.underline=false,
        this.textAlign=TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      softWrap: true,
      text,
      style: GoogleFonts.poppins(
        decoration:underline?TextDecoration.underline:null,
        fontSize: size,
        fontWeight: bolt,
        color: color,
      ),
      maxLines: 6,
    );
  }
}
