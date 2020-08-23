import 'package:belajar_asyik/Login/login.dart';
import 'package:belajar_asyik/components/rounded_button.dart';
import 'package:belajar_asyik/components/rounded_input_field.dart';
import 'package:belajar_asyik/components/rounded_password_field.dart';
import 'package:belajar_asyik/components/text_field_container.dart';
import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';
import 'background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String choice = "SD N 1 SKA";
  List _sekolah = ["SD N 1 SKA", "SD N 2 SKH"];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "asset/img/daftar_maskot.png",
              height: size.height * 0.2,
            ),
            Container(
              margin: EdgeInsets.only(bottom: size.height * 0.1),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Container(
                  // height: MediaQuery.of(context).size.height * 0.95,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.05,
                        right: size.width * 0.05,
                        bottom: size.height * 0.02),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: size.height * 0.05),
                          child: Text("DAFTAR",
                              style: TextStyle(
                                  fontSize: size.height * 0.05,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: size.height * 0.03),
                        RoundedInputField(
                          hintText: "Nama Lengkap",
                          onChanged: (value) {},
                        ),
                        RoundedInputField(
                          icon: Icons.dialpad,
                          hintText: "NISN",
                          onChanged: (value) {},
                        ),
                        TextFieldContainer(
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin:
                                    EdgeInsets.only(right: size.width * 0.04),
                                child: Icon(
                                  Icons.school,
                                  color: kBgColor,
                                ),
                              ),
                              Container(
                                width: size.width * 0.45,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    hint: Text(choice),
                                    value: choice,
                                    onChanged: (value) {
                                      setState(() {
                                        choice = value;
                                      });
                                    },
                                    items: _sekolah.map((value) {
                                      return DropdownMenuItem(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        RoundedInputField(
                          hintText: "Email",
                          onChanged: (value) {},
                          icon: Icons.email,
                        ),
                        RoundedInputField(
                          hintText: "Username",
                          onChanged: (value) {},
                          icon: Icons.person_outline,
                        ),
                        RoundedPasswordField(
                          onChanged: (value) {},
                        ),
                        SizedBox(height: size.height * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              text: "Daftar",
                              press: () {
                                Navigator.pop(context,
                                    MaterialPageRoute(builder: (context) {
                                  return LoginPage();
                                }));
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
