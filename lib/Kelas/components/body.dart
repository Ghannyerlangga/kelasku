import 'package:belajar_asyik/Kelas/components/background.dart';
import 'package:belajar_asyik/Kelas/components/kelas.dart';
import 'package:belajar_asyik/Kelas/components/header.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      header: Header(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Kelas(
                  child: Text("Kelas 1"),
                ),
                Kelas(
                  child: Text("Kelas 2"),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Kelas(
                  child: Text("Kelas 3"),
                ),
                Kelas(
                  child: Text("Kelas 4"),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Kelas(
                  child: Text("Kelas 5"),
                ),
                Kelas(
                  child: Text("Kelas 6"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
