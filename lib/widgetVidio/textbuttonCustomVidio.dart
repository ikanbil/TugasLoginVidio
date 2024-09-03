import 'package:flutter/material.dart';

class CustomTextButtonVidio extends StatelessWidget {
  final String buttonText;
  final double fontSize;
  final Color textColor;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry margin;
  final MainAxisAlignment rowAlignment;

  const CustomTextButtonVidio({
    Key? key,
    required this.buttonText,
    required this.fontSize,
    required this.textColor,
    required this.onPressed,
    required this.margin,
    this.rowAlignment = MainAxisAlignment.end,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Row(
        mainAxisAlignment: rowAlignment,
        children: [
          TextButton(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: fontSize,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
