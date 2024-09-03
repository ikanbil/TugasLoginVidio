import 'package:flutter/material.dart';
import 'package:latihan11pplg_2024/daftar_video.dart';
import 'package:latihan11pplg_2024/widgetVidio/buttonElavatedVidio.dart';
import 'package:latihan11pplg_2024/widgetVidio/sosmedVidio.dart';
import 'package:latihan11pplg_2024/widgetVidio/textUtamaVidio.dart';
import 'package:latihan11pplg_2024/widgetVidio/textfieldUtamaVidio.dart';
import 'package:latihan11pplg_2024/widgetVidio/textbuttonCustomVidio.dart';
import 'package:latihan11pplg_2024/widgetVidio/textspanVidio.dart';

class LoginVideo extends StatefulWidget {
  const LoginVideo({super.key});

  @override
  State<LoginVideo> createState() => _LoginVideoState();
}

class _LoginVideoState extends State<LoginVideo> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 15, 15),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 15, 15, 15),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(
                'asset/close.png',
                fit: BoxFit.cover,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            TextVidio(
              text: "Masuk ke akunmu yuk!",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              textColor: Colors.white,
            ),
            SizedBox(height: 10.0),
            TextVidio(
              text: "Banyak tayangan seru udah nungguin kamu nih.",
              fontSize: 12.0,
              fontWeight: FontWeight.normal,
              textColor: Color.fromARGB(255, 149, 149, 149),
            ),
            SizedBox(height: 10.0),
            TextfieldVidio(
              hintText: 'Email / Nomor HP',
              hintColor: Color.fromARGB(255, 150, 150, 150),
              fontSize: 13.0,
              borderColor: Color.fromARGB(255, 221, 221, 221),
              borderWidth: 0.5,
              focusedBorderWidth: 2.0,
              textColor: Color.fromARGB(255, 216, 216, 216),
              margin: EdgeInsets.fromLTRB(23, 16, 23, 16),
            ),
            TextfieldVidio(
              hintText: 'Kata Sandi',
              hintColor: Color.fromARGB(255, 150, 150, 150),
              fontSize: 13.0,
              borderColor: Color.fromARGB(255, 221, 221, 221),
              borderWidth: 0.5,
              focusedBorderWidth: 2.0,
              textColor: Color.fromARGB(255, 216, 216, 216),
              margin: EdgeInsets.fromLTRB(23, 18, 23, 0),
              obscureText: _obscureText,
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Color.fromARGB(255, 150, 150, 150),
                ),
                onPressed: _toggleVisibility,
              ),
            ),
            CustomTextButtonVidio(
              buttonText: 'Lupa Kata sandi',
              fontSize: 11.0,
              textColor: Color.fromARGB(255, 86, 182, 255),
              onPressed: () {},
              margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
              rowAlignment: MainAxisAlignment.end,
            ),
            ElavatedVidio(
              buttonText: 'Masuk',
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              backgroundColor: Color.fromARGB(255, 211, 0, 42),
              foregroundColor: Colors.white,
              onPressed: () {},
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              borderRadius: 2.0,
              minimumSize: Size(320, 40),
            ),
            SizedBox(height: 15.0),
            Textspanvidio(
              leftText: "---------------------------- ",
              centerText: "atau masuk pakai",
              rightText: " ----------------------------",
              fontSize: 10,
              fontWeight: FontWeight.bold,
              leftTextColor: Color.fromARGB(255, 75, 71, 71),
              centerTextColor: Color.fromARGB(255, 148, 148, 148),
              rightTextColor: Color.fromARGB(255, 75, 71, 71),
              onPressed: () {},
              buttonText: "",
              buttonTextColor: Color.fromARGB(255, 86, 182, 255),
            ),
            SizedBox(height: 18.0),
            Sosmedvidio(
              imageUrls: [
                'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                'https://www.edigitalagency.com.au/wp-content/uploads/Facebook-logo-blue-circle-large-white-f.png',
              ],
              sizes: [
                Size(40, 40),
                Size(30, 30),
              ],
              backgroundColor: Color.fromARGB(255, 15, 15, 15),
              onPressed: () {},
            ),
            SizedBox(height: 20.0),
            Textspanvidio(
              leftText: "Belum punya akun? ",
              centerText: "",
              rightText: "",
              fontSize: 12,
              fontWeight: FontWeight.bold,
              leftTextColor: Colors.white,
              centerTextColor: Colors.blue,
              rightTextColor: Colors.white,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DaftarVideo()),
                );
              },
              buttonText: "Daftar",
              buttonTextColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
