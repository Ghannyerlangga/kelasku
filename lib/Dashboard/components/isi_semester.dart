import 'package:belajar_asyik/Dashboard/components/isi_pelajaran.dart';
import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';

class DaftarPelajaranPage extends StatelessWidget {
  String semester;
  DaftarPelajaranPage(this.semester);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 8),
            child: Container(
              child: Center(
                child: Text(
                  semester,
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          mataPelajaran("Sejarah", context),
          mataPelajaran("Matematika", context),
          mataPelajaran("Penjas", context),
        ],
      ),
    );
  }

  Widget mataPelajaran(String namaPelajaran, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return PelajaranPage(nama: namaPelajaran);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: kTombol,
            shape: BoxShape.rectangle,
          ),
          child: Center(
            child: Text(
              namaPelajaran,
              style: TextStyle(fontSize: 25.0),
            ),
          ),
        ),
      ),
    );
  }
}
