import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';

class PengumumanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.06,
            right: size.width * 0.06,
            top: size.width * 0.06),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Pengumuman",
                  style: TextStyle(
                      fontSize: size.width * 0.1, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: size.height * 0.05,
              thickness: size.width * 0.003,
              color: kBgColor,
            ),
            SingleChildScrollView(
              child: Container(
                width: size.width,
                height: size.height * 0.15,
              ),
            ),
            Divider(
              height: size.height * 0.02,
              thickness: size.width * 0.003,
              color: kBgColor,
            ),
            SingleChildScrollView(
              child: Container(
                width: size.width,
                height: size.height * 0.15,
              ),
            ),
            Divider(
              height: size.height * 0.02,
              thickness: size.width * 0.003,
              color: kBgColor,
            ),
            SingleChildScrollView(
              child: Container(
                width: size.width,
                height: size.height * 0.15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
