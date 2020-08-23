import 'package:belajar_asyik/components/text_field_container.dart';
import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String kelas = "1";
  String semester = "Ganjil";
  List _kelas = ["1", "2", "3", "4", "5", "6"];
  List _semester = ["Ganjil", "Genap"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.symmetric(
          vertical: size.height * 0.08, horizontal: size.width * 0.04),
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              width: size.width * 0.9,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                color: kBgColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset("asset/img/banner_rapor.png"),
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              width: size.width * 0.8,
              child: Row(
                children: <Widget>[
                  Text(
                    "Kelas",
                    style: TextStyle(fontSize: size.height * 0.03),
                  )
                ],
              ),
            ),
            TextFieldContainer(
              child: Row(
                children: <Widget>[
                  Container(
                    width: size.width * 0.69,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text(kelas),
                        value: kelas,
                        onChanged: (value) {
                          setState(() {
                            kelas = value;
                          });
                        },
                        items: _kelas.map((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: size.width * 0.8,
              child: Row(
                children: <Widget>[
                  Text(
                    "Semester",
                    style: TextStyle(fontSize: size.height * 0.03),
                  )
                ],
              ),
            ),
            TextFieldContainer(
              child: Row(
                children: <Widget>[
                  Container(
                    width: size.width * 0.69,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        hint: Text(semester),
                        value: semester,
                        onChanged: (value) {
                          setState(() {
                            semester = value;
                          });
                        },
                        items: _semester.map((value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
