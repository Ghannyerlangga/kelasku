import 'package:belajar_asyik/Login/login.dart';
import 'package:belajar_asyik/components/rounded_button.dart';
import 'package:belajar_asyik/components/rounded_input_field.dart';
import 'package:belajar_asyik/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "asset/img/maskot_kepala.png",
              height: size.height * 0.2,
            ),
            Container(
              margin: EdgeInsets.only(bottom: size.height * 0.1),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.9,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 0.05, right: size.width * 0.08),
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
                          hintText: "Username",
                          onChanged: (value) {},
                          icon: Icons.person_outline,
                        ),
                        RoundedInputField(
                          hintText: "Email/No.Hp",
                          onChanged: (value) {},
                          icon: Icons.email,
                        ),
                        RoundedPasswordField(
                          onChanged: (value) {},
                        ),
                        RoundedInputField(
                          hintText: "Nama Sekolah",
                          onChanged: (value) {},
                          icon: Icons.school,
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
