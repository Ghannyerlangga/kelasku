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
            SizedBox(
              height: size.height * 0.05,
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    left: size.height * 0.01,
                    top: size.height * 0.025,
                    bottom: size.height * 0.025),
                child: Center(
                  child: Text(
                    "Ayo kerjakan PR Matematikamu bersama Bidi, sisa waktu pengumpulan tinggal 1 hari lagi, lho!",
                    style: TextStyle(
                        fontSize: size.height * 0.02, color: kBgColor),
                  ),
                ),
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border(
                      bottom: BorderSide(
                        //                   <--- left side
                        color: kBgColor,
                        width: 1.0,
                      ),
                      top: BorderSide(
                        //                    <--- top side
                        color: kBgColor,
                        width: 1.0,
                      ),
                    )),
              ),
            ),
            Container(
              height: size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }
}
