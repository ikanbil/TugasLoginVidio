import 'package:flutter/material.dart';

class ElavatedVidio extends StatelessWidget {
  final String buttonText;
  final double fontSize;
  final FontWeight fontWeight;
  final Color backgroundColor;
  final Color foregroundColor;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry margin;
  final double borderRadius;
  final Size minimumSize;

  const ElavatedVidio({
    Key? key,
    required this.buttonText,
    required this.fontSize,
    required this.fontWeight,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.onPressed,
    required this.margin,
    this.borderRadius = 2.0,
    this.minimumSize = const Size(320, 40),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          minimumSize: minimumSize,
        ),
        child: Text(buttonText),
      ),
    );
  }
}
