import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? size;
  final Color color;
  final TextDecoration textDecoration;
  final TextAlign? textAlign;
  final Alignment alignment;
  final FontWeight fontWeight;
  final double height;
  final double? letterSpacing;
  final EdgeInsets? padding;
  const CustomText({
    Key? key,
    this.text = '',
    this.color = Colors.black,
    this.size,
    this.textAlign,
    this.textDecoration = TextDecoration.none,
    this.fontWeight = FontWeight.w600,
    this.alignment = Alignment.topLeft,
    this.height = 0.0,
    this.letterSpacing,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Text(
        text,
        textAlign: textAlign,
        style: GoogleFonts.roboto(
          color: color,
          letterSpacing: letterSpacing,
          fontSize: size,
          decoration: textDecoration,
          fontWeight: fontWeight,
          height: height,
        ),
      ),
    );
  }
}
