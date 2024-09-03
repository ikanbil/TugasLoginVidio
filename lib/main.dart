import 'package:flutter/material.dart';
import 'package:latihan11pplg_2024/latihanlistview.dart';
import 'package:latihan11pplg_2024/login_video.dart';
import 'package:latihan11pplg_2024/daftar_video.dart';
import 'package:latihan11pplg_2024/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        useMaterial3: true,
      ),
      home: LoginVideo(),
    );
  }
}
