import 'package:flutter/material.dart';

class FlutterBorderedButton extends StatelessWidget {
  const FlutterBorderedButton({
    super.key,
    required this.onPresssed,

    this.foregroundColor,
    this.borderRadius,
    this.shape,
    required this.isDisable,
    required this.text,
    this.icon,
    this.iconAlignment,
    this.textStyle,
    this.borderColor,
    this.borderWidth,
  });

  final Function() onPresssed;
  final bool isDisable;
  final String text;

  final Color? foregroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;
  final OutlinedBorder? shape;
  final Widget? icon;
  final IconAlignment? iconAlignment;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: isDisable ? null : onPresssed,

      style: OutlinedButton.styleFrom(
        overlayColor: Colors.red,
        side: BorderSide(
          color: borderColor ?? Colors.black,
          width: borderWidth ?? 1,
        ),

        textStyle:
            textStyle ?? TextStyle(fontSize: 16, fontWeight: FontWeight.bold),

        foregroundColor:
            isDisable ? Colors.white : foregroundColor ?? Colors.black,

        shape:
            shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
              side: BorderSide(color: Colors.red, width: 1),
            ),
      ),
      label: Text(text),
      icon: icon,

      iconAlignment: iconAlignment,
    );
  }
}
