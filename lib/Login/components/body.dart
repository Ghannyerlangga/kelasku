import 'package:belajar_asyik/Dashboard/dashboard.dart';
import 'package:belajar_asyik/Register/register.dart';
import 'package:belajar_asyik/Reset/reset.dart';
import 'package:belajar_asyik/components/rounded_button.dart';
import 'package:belajar_asyik/components/rounded_input_field.dart';
import 'package:belajar_asyik/components/rounded_password_field.dart';
import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';
import 'background.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  Animation animation, delayedAnimation, muchDelayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.bounceIn));
    delayedAnimation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController,
        curve: Interval(3.0, 5.0, curve: Curves.bounceIn)));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AnimatedBuilder(
        animation: animationController,
        builder: (BuildContext context, Widget child) {
          return Background(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Transform(
                  transform: Matrix4.translationValues(
                      animation.value * size.width, 0.0, 0.0),
                  child: Image.asset(
                    "asset/img/login_maskot.png",
                    height: size.height * 0.2,
                  ),
                ),
                Transform(
                  transform: Matrix4.translationValues(
                      animation.value * size.width, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: Container(
                      // height: MediaQuery.of(context).size.height * 0.7,
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
                              child: Text("LOGIN",
                                  style: TextStyle(
                                      fontSize: size.height * 0.05,
                                      fontWeight: FontWeight.bold)),
                            ),
                            SizedBox(height: size.height * 0.03),
                            Container(
                              child: RoundedInputField(
                                hintText: "Username",
                                onChanged: (value) {},
                              ),
                            ),
                            Container(
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
                                        color: kTombol,
                                        fontWeight: FontWeight.bold),
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
                                      return Dashboard();
                                    }));
                                  },
                                )
                              ],
                            ),
                            SizedBox(height: size.height * 0.05),
                            Row(
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ));
        });
  }
}
