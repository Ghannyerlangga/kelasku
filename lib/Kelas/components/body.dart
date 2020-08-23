import 'package:belajar_asyik/Kelas/IPA/ipa.dart';
import 'package:flutter/material.dart';
import 'package:belajar_asyik/constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String choice = "Ganjil";
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
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: size.height * 0.02),
                      width: size.width * 0.4,
                      height: size.height * 0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: size.width * 0.4,
                            height: size.height * 0.07,
                            // color: Colors.white,
                            child: Text(
                              "Kelas 5",
                              style: TextStyle(
                                  color: pageColor,
                                  fontSize: size.height * 0.05,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                  width: size.width * 0.2,
                                  height: size.height * 0.05,
                                  // color: Colors.black,
                                  margin:
                                      EdgeInsets.only(top: size.height * 0.01),
                                  padding: EdgeInsets.only(
                                      top: size.height * 0.0045),
                                  child: Text(
                                    "Semester",
                                    style: TextStyle(
                                        color: pageColor,
                                        fontSize: size.height * 0.025),
                                  )),
                              Container(
                                width: size.width * 0.2,
                                height: size.height * 0.05,
                                padding: EdgeInsets.only(
                                    left: size.width * 0.01,
                                    right: size.width * 0.01),
                                decoration: BoxDecoration(
                                    color: pageColor,
                                    borderRadius: BorderRadius.circular(29)),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    hint: Text(choice),
                                    value: choice,
                                    onChanged: (value) {
                                      setState(() {
                                        choice = value;
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
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      "asset/img/maskot_kelas.png",
                      height: size.height * 0.2,
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.06),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Pelajaran Hari Ini",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.height * 0.025),
                    )
                  ],
                ),
              ),
              Container(
                width: size.width * 0.85,
                child: Divider(
                  thickness: size.height * 0.006,
                  color: kBgColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return IPAPage();
                  }));
                },
                child: Container(
                    margin: EdgeInsets.only(top: size.height * 0.01),
                    width: size.width * 0.8,
                    child: Image.asset("asset/img/button_ipa.png")),
              ),
              Container(
                  margin: EdgeInsets.only(top: size.height * 0.01),
                  width: size.width * 0.8,
                  child: Image.asset("asset/img/button_mtk.png")),
              Container(
                  margin: EdgeInsets.only(top: size.height * 0.01),
                  width: size.width * 0.8,
                  child: Image.asset("asset/img/button_basing.png")),
              SizedBox(height: size.height * 0.03),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.06),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Mata Pelajaran Lainnya",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.height * 0.025),
                    )
                  ],
                ),
              ),
              Container(
                width: size.width * 0.85,
                child: Divider(
                  thickness: size.height * 0.006,
                  color: kBgColor,
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                width: size.width * 0.85,
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: size.width * 0.01),
                      width: size.width * 0.4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          color: Color(0xFFF4FFCA),
                          onPressed: () {},
                          child: Text(
                            "PENJAS",
                            style: TextStyle(color: Color(0xFF505C1F)),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width * 0.4,
                      margin: EdgeInsets.only(left: size.width * 0.01),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: FlatButton(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          color: Color(0xFFFFEACA),
                          onPressed: () {},
                          child: Text(
                            "PPKN",
                            style: TextStyle(color: Color(0xFF8E6424)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
