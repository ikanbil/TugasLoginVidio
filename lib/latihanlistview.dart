import 'package:flutter/material.dart';
import 'package:latihan11pplg_2024/component/adapterList.dart';
import 'package:latihan11pplg_2024/model/modelSiswa.dart';

class listSiswa extends StatefulWidget {
  const listSiswa({super.key});

  @override
  State<listSiswa> createState() => _listSiswaState();
}

class _listSiswaState extends State<listSiswa> {
  //apiii
  List<ModelSiswa> dataSiswa = [
    ModelSiswa("adli", "semarang"),
    ModelSiswa("alvian", "jogja"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List siswa"),
      ),
      body: Container(
        child: ListView.builder(
            itemCount: dataSiswa.length,
            itemBuilder: (context, index) {
              return AdapterSiswa(modelSiswa: dataSiswa[index]);
            }),
      ),
    );
  }
}
