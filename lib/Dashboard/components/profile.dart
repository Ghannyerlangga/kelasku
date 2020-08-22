import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double padding = size.height * 0.04;
    TextStyle _pDataStyle = TextStyle(fontSize: size.width * 0.04);
    return Padding(
      padding: EdgeInsets.all(size.width * 0.05),
      child: Container(
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: size.width * 0.3,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        "asset/img/maskot_kepala.png",
                      )),
                      shape: BoxShape.circle),
                ),
                Text(
                  "Nama Siswa",
                  style: TextStyle(fontSize: size.width * 0.068),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: size.height * 0.02),
              child: Container(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    FaIcon(
                      FontAwesomeIcons.edit,
                      color: kBgColor,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.1),
              child: Table(
                columnWidths: {
                  0: FractionColumnWidth(.4),
                  1: FractionColumnWidth(.1),
                  2: FractionColumnWidth(.5)
                },
                children: [
                  profileData("NISN", "101010101010", _pDataStyle, padding),
                  profileData(
                      "Tanggal Lahir", "12-09-2013", _pDataStyle, padding),
                  profileData(
                      'Jenis Kelamin', "Laki-laki", _pDataStyle, padding),
                  profileData("Agama", "Islam", _pDataStyle, padding),
                  profileData(
                      "Alamat", "Gondokusuman, YK", _pDataStyle, padding),
                  profileData(
                      "Email", "siswa01@mail.com", _pDataStyle, padding),
                  profileData("No HP", "08882281821", _pDataStyle, padding)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TableRow profileData(
      String title, String data, TextStyle style, double padding) {
    return TableRow(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(bottom: padding),
          child: Text(
            title,
            style: style,
          ),
        ),
        Text(
          ":",
          style: style,
        ),
        Text(
          data,
          style: style,
        )
      ],
    );
  }
}
