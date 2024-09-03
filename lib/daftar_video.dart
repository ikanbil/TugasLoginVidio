import 'package:flutter/material.dart';
import 'package:latihan11pplg_2024/login_video.dart';
import 'package:latihan11pplg_2024/widgetVidio/buttonElavatedVidio.dart';
import 'package:latihan11pplg_2024/widgetVidio/sosmedVidio.dart';
import 'package:latihan11pplg_2024/widgetVidio/textUtamaVidio.dart';
import 'package:latihan11pplg_2024/widgetVidio/textfieldUtamaVidio.dart';
import 'package:latihan11pplg_2024/widgetVidio/textbuttonCustomVidio.dart';
import 'package:latihan11pplg_2024/widgetVidio/textspanVidio.dart';

class DaftarVideo extends StatefulWidget {
  const DaftarVideo({super.key});

  @override
  State<DaftarVideo> createState() => _DaftarVideoState();
}

class _DaftarVideoState extends State<DaftarVideo> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 15, 15),
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginVideo()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            TextVidio(
              text: "Selamat Datang Di Vidio!",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              textColor: Colors.white,
            ),
            TextVidio(
              text: "Buat akunmu yuk!",
              fontSize: 17,
              fontWeight: FontWeight.bold,
              textColor: Colors.white,
            ),
            const SizedBox(height: 10.0),
            TextVidio(
              text: "Terus Kamu bisa mulai nonton tayangan apa pun yang",
              fontSize: 12,
              fontWeight: FontWeight.normal,
              textColor: Color.fromARGB(255, 149, 149, 149),
            ),
            TextVidio(
              text: "kamu mau.",
              fontSize: 12,
              fontWeight: FontWeight.normal,
              textColor: Color.fromARGB(255, 149, 149, 149),
            ),
            const SizedBox(height: 10.0),
            TextfieldVidio(
              hintText: 'Email / Nomor HP',
              hintColor: const Color.fromARGB(255, 150, 150, 150),
              fontSize: 13,
              borderColor: const Color.fromARGB(255, 221, 221, 221),
              borderWidth: 0.5,
              focusedBorderWidth: 2.0,
              textColor: const Color.fromARGB(255, 216, 216, 216),
              margin: const EdgeInsets.fromLTRB(23, 16, 23, 16),
            ),
            TextfieldVidio(
              hintText: 'Kata Sandi',
              hintColor: const Color.fromARGB(255, 150, 150, 150),
              fontSize: 13,
              borderColor: const Color.fromARGB(255, 221, 221, 221),
              borderWidth: 0.5,
              focusedBorderWidth: 2.0,
              textColor: const Color.fromARGB(255, 216, 216, 216),
              obscureText: _obscureText,
              margin: const EdgeInsets.fromLTRB(23, 18, 23, 0),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: const Color.fromARGB(255, 150, 150, 150),
                ),
                onPressed: _toggleVisibility,
              ),
            ),
            const SizedBox(height: 30.0),
            ElavatedVidio(
              buttonText: "Daftar",
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              backgroundColor: const Color.fromARGB(255, 211, 0, 42),
              foregroundColor: Colors.white,
              onPressed: () {},
              margin: const EdgeInsets.all(0),
            ),
            const SizedBox(height: 15.0),
            Textspanvidio(
              leftText: "---------------------------- ",
              centerText: "atau daftar pakai",
              rightText: " ----------------------------",
              fontSize: 10,
              fontWeight: FontWeight.bold,
              leftTextColor: Color.fromARGB(255, 75, 71, 71),
              centerTextColor: Color.fromARGB(255, 148, 148, 148),
              rightTextColor: Color.fromARGB(255, 75, 71, 71),
              onPressed: () {},
              buttonText: "",
              buttonTextColor: Colors.transparent,
            ),
            const SizedBox(height: 18.0),
            Sosmedvidio(
              imageUrls: [
                'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                'https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Facebook_colored_svg_copy-512.png',
              ],
              sizes: [
                Size(40, 40),
                Size(30, 30),
              ],
              backgroundColor: const Color.fromARGB(255, 15, 15, 15),
              onPressed: () {},
            ),
            const SizedBox(height: 15.0),
            Textspanvidio(
                leftText: "Udah ada akun?",
                centerText: "",
                rightText: "",
                fontSize: 12,
                fontWeight: FontWeight.bold,
                leftTextColor: Colors.white,
                centerTextColor: Colors.black,
                rightTextColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginVideo()),
                  );
                },
                buttonText: "Masuk",
                buttonTextColor: Colors.blue),
            const SizedBox(height: 30.0),
            Textspanvidio(
              leftText: "Dengan Membuat akun, ",
              centerText: "kamu setuju dengan ",
              rightText: "syarat",
              fontSize: 9,
              fontWeight: FontWeight.bold,
              leftTextColor: Color.fromARGB(255, 255, 255, 255),
              centerTextColor: Color.fromARGB(255, 255, 255, 255),
              rightTextColor: Color.fromARGB(255, 255, 255, 255),
              onPressed: () {},
              buttonText: "",
              buttonTextColor: Colors.blue,
            ),
            Textspanvidio(
              leftText: "Penggunaan  ",
              centerText: "& ",
              rightText: "Kebijakan Privasi",
              fontSize: 9,
              fontWeight: FontWeight.bold,
              leftTextColor: Colors.blue,
              centerTextColor: Color.fromARGB(255, 255, 255, 255),
              rightTextColor: Colors.blue,
              onPressed: () {},
              buttonText: "",
              buttonTextColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
