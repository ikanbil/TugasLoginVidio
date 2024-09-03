import 'package:flutter/material.dart';
import 'package:latihan11pplg_2024/model/modelSiswa.dart';

class AdapterSiswa extends StatelessWidget {
  final ModelSiswa modelSiswa;
  const AdapterSiswa({super.key, required this.modelSiswa});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(modelSiswa.nama),
          Text(modelSiswa.alamat),
        ],
      ),
    );
  }
}
