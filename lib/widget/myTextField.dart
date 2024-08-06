import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextStyle textStyle;
  final bool isObsecure;
  final TextEditingController controller;

  const MyTextField(
      {super.key,
      required this.hintText,
      required this.textStyle,
      required this.isObsecure,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        controller: controller,
        obscureText: isObsecure,
        decoration: InputDecoration(hintText: hintText),
      ),
    );
  }
}
