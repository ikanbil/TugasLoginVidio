import 'package:flutter/material.dart';
import 'package:latihan11pplg_2024/widget/material.dart';

class myButton extends StatelessWidget {
  final String textButton;
  final Color backgroundColor;
  final Color TextColor;
  final double radius;
  final double elevation;

  const myButton(
      {super.key,
      required this.textButton,
      required this.backgroundColor,
      required this.TextColor,
      required this.radius,
      required this.elevation});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: () {},
      child: Text(
        textButton,
      ),
    );
  }
}
