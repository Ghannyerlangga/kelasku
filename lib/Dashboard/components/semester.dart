import 'package:belajar_asyik/Dashboard/components/isi_semester.dart';
import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';

class SemesterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 8),
              child: Container(
                child: Center(
                  child: Text(
                    'Kelas 5',
                    style:
                        TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DaftarPelajaranPage("Semester 1");
                  }));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: kTombol,
                    shape: BoxShape.rectangle,
                  ),
                  child: Center(
                    child: Text(
                      "Semester 1",
                      style: TextStyle(fontSize: 25.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              child: Container(
                height: 50,
                decoration:
                    BoxDecoration(shape: BoxShape.rectangle, color: kTombol),
                child: Center(
                  child: Text(
                    "Semester 2",
                    style: TextStyle(fontSize: 25.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
