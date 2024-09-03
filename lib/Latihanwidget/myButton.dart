import 'package:flutter/material.dart';
import 'package:latihan11pplg_2024/Latihanwidget/material.dart';

class myButton extends StatelessWidget {
  final String textButton;
  final Color backgroundColor;
  final Color TextColor;
  final double radius;
  final double elevation;
  final VoidCallback onPressed;

  const myButton(
      {super.key,
      required this.textButton,
      required this.backgroundColor,
      required this.TextColor,
      required this.radius,
      required this.elevation,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      child: Text(
        textButton,
      ),
    );
  }
}
