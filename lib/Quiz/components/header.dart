import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.topCenter,
      width: size.width,
      height: size.height,
      child: Container(
        width: size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text(
                "Quiz",
                style: TextStyle(
                  fontSize: size.height * 0.1,
                ),
              ),
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(color: kBgColor, width: 2))),
            ),
            Row(
              children: <Widget>[
                Text("Level 3"),
                Container(
                    width: size.width * 0.15,
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/img/maskot_kepala.png")),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
