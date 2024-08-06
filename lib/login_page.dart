import 'package:flutter/material.dart';
import 'package:latihan11pplg_2024/widget/material.dart';
import 'package:latihan11pplg_2024/widget/myButton.dart';
import 'package:latihan11pplg_2024/widget/myTextField.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login page",
          style: TextStyle(color: Colors.cyan),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            MyTextField(
                hintText: "username",
                textStyle: TextStyle(color: Colors.red),
                isObsecure: false),

            MyTextField(
                hintText: "password",
                textStyle: TextStyle(color: textColor),
                isObsecure: false),
            myButton(
                textButton: "login",
                backgroundColor: primaryColor,
                TextColor: textColor,
                radius: 7,
                elevation: 7),
            // Expanded(child: Container()),
            Spacer(),
            Container(
              child: TextButton(
                onPressed: () {},
                child: Text("ok"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
