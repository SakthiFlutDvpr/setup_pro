import 'package:flutter/material.dart';

class FlutterColoredButton extends StatelessWidget {
  const FlutterColoredButton({
    super.key,
    required this.onPresssed,
    this.backgroundColor,
    this.foregroundColor,
    this.borderRadius,
    this.shape,
    required this.isDisable,
    required this.text,
    this.icon,
    this.iconAlignment,
    this.textStyle,
  });

  final Function() onPresssed;
  final bool isDisable;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? borderRadius;
  final OutlinedBorder? shape;
  final Widget? icon;
  final IconAlignment? iconAlignment;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: isDisable ? null : onPresssed,

      style: ElevatedButton.styleFrom(
        overlayColor: Colors.green,
        textStyle:
            textStyle ?? TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        backgroundColor:
            isDisable ? Colors.grey : backgroundColor ?? Colors.green,
        foregroundColor:
            isDisable ? Colors.white : foregroundColor ?? Colors.white,
        shape:
            shape ??
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
      ),
      label: Text(text),

      icon: icon,
      iconAlignment: iconAlignment,
    );
  }
}
