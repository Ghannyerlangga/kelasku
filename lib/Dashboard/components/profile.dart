import 'package:belajar_asyik/Profile/edit.dart';
import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double padding = size.height * 0.03;
    TextStyle _pDataStyle = TextStyle(fontSize: size.width * 0.04);
    return Scaffold(
      backgroundColor: pageColor,
      body: Container(
        padding: EdgeInsets.only(
            top: size.width * 0.05,
            left: size.width * 0.07,
            right: size.width * 0.07),
        width: size.width,
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: size.height * 0.2),
                  width: size.width * 0.3,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                        "asset/img/log_reg_maskot.png",
                      )),
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  "Nama Siswa",
                  style: TextStyle(fontSize: size.width * 0.068),
                ),
                Text(
                  "Nama Sekolah",
                  style: TextStyle(fontSize: size.width * 0.04),
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
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return EditProfilePage();
                        }));
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.edit,
                        color: kBgColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0),
              child: Column(
                children: [
                  profileData(
                      context, "NISN", "101010101010", _pDataStyle, padding),
                  profileData(context, "Tanggal Lahir", "12-09-2013",
                      _pDataStyle, padding),
                  profileData(context, 'Jenis Kelamin', "Laki-laki",
                      _pDataStyle, padding),
                  profileData(context, "Agama", "Islam", _pDataStyle, padding),
                  profileData(context, "Alamat", "Gondokusuman, YK",
                      _pDataStyle, padding),
                  profileData(context, "Email", "siswa01@mail.com", _pDataStyle,
                      padding),
                  profileData(
                      context, "No HP", "08882281821", _pDataStyle, padding)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget profileData(BuildContext context, String title, String data,
      TextStyle style, double padding) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: size.width * 0.29,
            child: Text(
              title,
              style: style,
            ),
          ),
          Text(
            ":",
            style: style,
          ),
          Container(
            width: size.width * 0.4,
            child: Text(
              data,
              style: style,
            ),
          )
        ],
      ),
    );
  }
}
