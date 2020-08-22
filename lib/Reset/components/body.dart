import 'package:belajar_asyik/Login/login.dart';
import 'package:belajar_asyik/components/rounded_button.dart';
import 'package:belajar_asyik/components/rounded_input_field.dart';
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
            Container(
              margin: EdgeInsets.only(left: size.width * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "asset/img/reset_maskot.png",
                    height: size.height * 0.2,
                  ),
                ],
              ),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Container(
                  // height: MediaQuery.of(context).size.height * 0.45,
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
                          child: Text("Reset Password",
                              style: TextStyle(
                                  fontSize: size.height * 0.04,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: size.height * 0.03),
                        RoundedInputField(
                          hintText: "Masukkan Email",
                          onChanged: (value) {},
                        ),
                        SizedBox(height: size.height * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              text: "Reset",
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
