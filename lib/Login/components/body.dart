import 'package:belajar_asyik/Dashboard/dashboard.dart';
import 'package:belajar_asyik/Register/register.dart';
import 'package:belajar_asyik/Reset/reset.dart';
import 'package:belajar_asyik/components/rounded_button.dart';
import 'package:belajar_asyik/components/rounded_input_field.dart';
import 'package:belajar_asyik/components/rounded_password_field.dart';
import 'package:belajar_asyik/constants.dart';
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
            ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
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
                        child: Text("LOGIN",
                            style: TextStyle(
                                fontSize: size.height * 0.05,
                                fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(height: size.height * 0.03),
                      Container(
                        // margin: EdgeInsets.only(
                        //     left: size.width * 0.05, right: size.width * 0.05),
                        child: RoundedInputField(
                          hintText: "Username",
                          onChanged: (value) {},
                        ),
                      ),
                      Container(
                        // margin: EdgeInsets.only(
                        //     left: size.width * 0.05, right: size.width * 0.05),
                        child: RoundedPasswordField(
                          onChanged: (value) {},
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ResetPage();
                              }));
                            },
                            child: Text(
                              "Lupa Password?",
                              style: TextStyle(
                                  color: kTombol, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: size.height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedButton(
                            text: "Masuk",
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HomePage();
                              }));
                            },
                          )
                        ],
                      ),
                      SizedBox(height: size.height * 0.1),
                      Align(
                        alignment: FractionalOffset.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Belum punya akun? "),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return RegisterPage();
                                }));
                              },
                              child: Text(
                                "Daftar",
                                style: TextStyle(
                                    color: kTombol,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
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
