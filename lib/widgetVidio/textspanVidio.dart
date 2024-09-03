import 'package:flutter/material.dart';

class Textspanvidio extends StatelessWidget {
  final String leftText;
  final String centerText;
  final String rightText;
  final double fontSize;
  final FontWeight fontWeight;
  final Color leftTextColor;
  final Color centerTextColor;
  final Color rightTextColor;
  final VoidCallback onPressed;
  final String buttonText;
  final Color buttonTextColor;

  const Textspanvidio({
    Key? key,
    required this.leftText,
    required this.centerText,
    required this.rightText,
    required this.fontSize,
    required this.fontWeight,
    required this.leftTextColor,
    required this.centerTextColor,
    required this.rightTextColor,
    required this.onPressed,
    required this.buttonText,
    required this.buttonTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: leftText,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: leftTextColor,
                ),
              ),
              TextSpan(
                text: centerText,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: centerTextColor,
                ),
              ),
              TextSpan(
                text: rightText,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  color: rightTextColor,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 5),
        TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size(0, 0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            foregroundColor: buttonTextColor,
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: buttonTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
