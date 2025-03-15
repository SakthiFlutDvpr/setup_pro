import 'package:flutter/material.dart';

class FlutterInputField extends StatelessWidget {
  const FlutterInputField({
    super.key,
    this.controller,
    required this.filled,
    required this.border,
    this.hintText,
    this.validator,
    this.onSaved,
    this.inputType,
    this.focusNode,
    this.suffixIcon,
    this.onTap,
    this.maxLines,
    this.readOnly,
    this.verticalContentPadding,
    this.obscure,
    this.textStyle,
    this.fillColor,
    this.hintStyle,
    this.prefixIcon,
    this.horizontalPadding,
    this.errorStyle,
    this.textCapitalization,
    this.textAlign,
    this.cursorColor,
    this.autoFocus,
  });
  final TextEditingController? controller;
  final TextStyle? textStyle;
  final TextStyle? errorStyle;
  final TextInputType? inputType;
  final bool filled;
  final Color? fillColor;
  final int? maxLines;
  final bool border;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final FocusNode? focusNode;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final bool? readOnly;
  final double? verticalContentPadding;
  final double? horizontalPadding;
  final bool? obscure;
  final TextCapitalization? textCapitalization;
  final TextAlign? textAlign;
  final Color? cursorColor;
  final bool? autoFocus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: autoFocus ?? false,
      keyboardType: inputType,
      maxLines: maxLines ?? 1,
      controller: controller,
      focusNode: focusNode,
      validator: validator,
      onTap: onTap,
      readOnly: readOnly ?? false,
      obscureText: obscure ?? false,
      onSaved: onSaved,
      cursorColor: cursorColor ?? Colors.black,
      textCapitalization: textCapitalization ?? TextCapitalization.none,
      textAlign: textAlign ?? TextAlign.start,
      style:
          textStyle ??
          TextStyle(
            fontSize: 15,
            color: const Color(0xff444444),
            fontWeight: FontWeight.w600,
          ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: verticalContentPadding ?? 0,
          horizontal: horizontalPadding ?? 8.0,
        ),
        hintText: hintText,
        hintStyle:
            hintStyle ??
            TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
        border:
            border
                ? OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: Color(0xff666666),
                  ),
                  borderRadius: BorderRadius.circular(8),
                )
                : InputBorder.none,
        enabledBorder:
            border
                ? OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1.5,
                    color: Color(0xff666666),
                  ),
                  borderRadius: BorderRadius.circular(8),
                )
                : InputBorder.none,
        focusedBorder:
            border
                ? OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 2,
                    color: Color(0xff444444),
                  ),
                  borderRadius: BorderRadius.circular(8),
                )
                : InputBorder.none,
        errorStyle:
            errorStyle ??
            TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1.5, color: Color(0xffE54444)),
          borderRadius: BorderRadius.circular(8),
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: filled,
        fillColor: fillColor ?? Colors.transparent,
      ),
    );
  }
}
