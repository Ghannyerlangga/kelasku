import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: fieldColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.02,
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Nama User",
                      style: TextStyle(fontSize: size.height * 0.035),
                    ),
                    Text(
                      "Sekolah User",
                      style: TextStyle(fontSize: size.height * 0.025),
                    ),
                  ],
                ),
                Container(
                  width: size.width * 0.12,
                  height: size.width * 0.12,
                  decoration: BoxDecoration(
                      color: kBgColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(
                          "asset/img/maskot_kepala.png",
                        ),
                      )),
                )
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.05, right: size.width * 0.05),
            child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 0.02),
                      child: Container(
                        height: size.height * 0.35,
                        width: size.width * 0.35,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage(
                            "asset/img/maskot_kepala.png",
                          ),
                        )),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(right: size.width * 0.05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Selamat Datang!",
                              style: TextStyle(
                                  color: fieldColor,
                                  fontSize: size.width * 0.055,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("Bidi sudah siap membantu",
                                style: TextStyle(
                                    color: fieldColor,
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.bold)),
                            Text("mu belajar hari ini!",
                                style: TextStyle(
                                    color: fieldColor,
                                    fontSize: size.width * 0.035,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: kBgColor,
                    borderRadius: BorderRadius.circular(30)),
                height: 200,
                width: size.width * 0.9),
          ),
          Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.02,
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    "Pengumuman",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.01),
                    child: FaIcon(
                      FontAwesomeIcons.bullhorn,
                      color: kTombol,
                      size: size.width * 0.06,
                    ),
                  )
                ],
              )),
          Divider(),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.02,
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: Container(
              height: 100,
              child: Center(
                child: Text("Berisi pengumuman hari ini"),
              ),
              color: fieldColor,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(
                top: size.height * 0.02,
                left: size.width * 0.05,
                right: size.width * 0.05,
              ),
              child: Row(
                children: <Widget>[
                  Text(
                    "Aktivitas Terbaru",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.rate_review,
                    color: kTombol,
                    size: 30,
                  )
                ],
              )),
          Divider(),
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.02,
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: Container(
              height: 100,
              child: Center(
                child: Text(
                    "Berisi aktifitas yang dapat dilakukan oleh user hari ini"),
              ),
              color: fieldColor,
              width: MediaQuery.of(context).size.width,
            ),
          ),
        ],
      ),
    );
  }
}
