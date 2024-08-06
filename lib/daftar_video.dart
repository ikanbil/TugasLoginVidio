import 'package:flutter/material.dart';

class DaftarVideo extends StatefulWidget {
  const DaftarVideo({super.key});

  @override
  State<DaftarVideo> createState() => _DaftarVideoState();
}

class _DaftarVideoState extends State<DaftarVideo> {
  bool _obscureText = true;
  bool _isEmailFilled = false;
  bool _isPasswordFilled = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _updateButtonState() {
    setState(() {
      _isEmailFilled = _emailController.text.isNotEmpty;
      _isPasswordFilled = _passwordController.text.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_updateButtonState);
    _passwordController.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 15, 15),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 15, 15, 15),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                "Selamat Datang Di Vidio!",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Container(
              child: Text(
                "Buat akunmu yuk!",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              child: Center(
                child: Text(
                  "Terus Kamu bisa mulai nonton tayangan apa pun yang",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 149, 149, 149),
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text(
                  "kamu mau.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromARGB(255, 149, 149, 149),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.fromLTRB(23, 16, 23, 16),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Email / Nomor HP',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 150, 150, 150),
                    fontSize: 13,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 221, 221, 221),
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 221, 221, 221),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 221, 221, 221),
                      width: 0.5,
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 216, 216, 216),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(23, 18, 23, 0),
              child: TextField(
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  hintText: 'Kata Sandi',
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 150, 150, 150),
                    fontSize: 13,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 221, 221, 221),
                      width: 0.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 221, 221, 221),
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 221, 221, 221),
                      width: 0.5,
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Color.fromARGB(255, 150, 150, 150),
                    ),
                    onPressed: _toggleVisibility,
                  ),
                ),
                style: TextStyle(
                  color: Color.fromARGB(255, 216, 216, 216),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ElevatedButton(
                onPressed: (_isEmailFilled && _isPasswordFilled) ? () {} : null,
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: (_isEmailFilled && _isPasswordFilled)
                      ? const Color.fromARGB(255, 243, 33, 33)
                      : const Color.fromARGB(255, 200, 200, 200),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0)),
                  minimumSize: Size(320, 40),
                ),
                child: Text("Daftar"),
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "---------------------------- ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 75, 71, 71),
                      ),
                    ),
                    TextSpan(
                      text: "atau daftar pakai",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 148, 148, 148),
                      ),
                    ),
                    TextSpan(
                      text: " ----------------------------",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 75, 71, 71),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 18.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: Color.fromARGB(255, 15, 15, 15),
                    ),
                    child: SizedBox(
                      width: 40,
                      height: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.network(
                          'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                      backgroundColor: Color.fromARGB(255, 15, 15, 15),
                    ),
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.network(
                          'https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Facebook_colored_svg_copy-512.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.0),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Udah ada akun?",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      print("Text button tapped");
                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                        minimumSize: Size(0, 0),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        foregroundColor: Colors.blue),
                    child: Text(
                      "Masuk",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Dengan Membuat akun, kamu setuju dengan ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    TextSpan(
                      text: "syarat",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Penggunaan ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    TextSpan(
                      text: " & ",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    TextSpan(
                      text: " Kebijakan Privasi",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
