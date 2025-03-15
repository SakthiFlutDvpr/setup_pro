import 'package:flutter/material.dart';

class FlutterCustomText extends StatelessWidget {
  const FlutterCustomText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.decoration,
    this.decorationStyle,
    this.textAlign,
    this.overflow,
    this.textDirection,
  });

  final String text;
  final TextAlign? textAlign;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDecoration? decoration;
  final TextDecorationStyle? decorationStyle;
  final TextOverflow? overflow;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      textDirection: textDirection,
      style: TextStyle(
        fontSize: fontSize ?? 15,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color ?? Colors.black,
        decoration: decoration ?? TextDecoration.none,
        decorationColor: color,
        decorationStyle: decorationStyle,
      ),
    );
  }
}
