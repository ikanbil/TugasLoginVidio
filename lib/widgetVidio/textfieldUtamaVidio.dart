import 'package:flutter/material.dart';

class TextfieldVidio extends StatelessWidget {
  final String hintText;
  final Color hintColor;
  final double fontSize;
  final Color borderColor;
  final double borderWidth;
  final double focusedBorderWidth;
  final Color textColor;
  final EdgeInsetsGeometry margin;
  final bool obscureText;
  final Widget? suffixIcon;

  const TextfieldVidio({
    Key? key,
    required this.hintText,
    required this.hintColor,
    required this.fontSize,
    required this.borderColor,
    required this.borderWidth,
    required this.focusedBorderWidth,
    required this.textColor,
    required this.margin,
    this.obscureText = false,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: hintColor,
            fontSize: fontSize,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
              width: focusedBorderWidth,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ),
          suffixIcon: suffixIcon,
        ),
        style: TextStyle(
          color: textColor,
        ),
      ),
    );
  }
}
