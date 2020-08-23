import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double padding = size.height * 0.04;
    TextStyle _pDataStyle = TextStyle(fontSize: size.width * 0.04);
    return Scaffold(
      // appBar: AppBar(
      //   leading: Icon(Icons.arrow_back, color: Colors.black),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      body: Padding(
        padding: EdgeInsets.only(top: padding),
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.07, right: size.width * 0.07),
                child: Column(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            width: size.width * 0.4,
                            height: size.height * 0.25,
                            child: Column(
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
                                Text("Change Profile Photo")
                              ],
                            )),
                        Text(
                          "Nama Siswa",
                          style: TextStyle(fontSize: size.width * 0.068),
                        ),
                        Text(
                          "Nama Sekolah",
                          style: TextStyle(fontSize: size.width * 0.04),
                        ),
                        SingleChildScrollView(
                          padding: EdgeInsets.only(top: size.height * 0.05),
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            width: size.width,
                            child: Column(
                              children: <Widget>[
                                profileData(
                                  context,
                                  "NISN",
                                ),
                                profileData(
                                  context,
                                  "Tanggal Lahir",
                                ),
                                profileData(
                                  context,
                                  'Jenis Kelamin',
                                ),
                                profileData(
                                  context,
                                  "Agama",
                                ),
                                profileData(
                                  context,
                                  "Alamat",
                                ),
                                profileData(
                                  context,
                                  "Email",
                                ),
                                profileData(
                                  context,
                                  "No HP",
                                )
                              ],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                color: kTombol,
                                child: Text("Reset"),
                                onPressed: () {}),
                            SizedBox(width: size.width * 0.05),
                            FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                color: kTombol,
                                child: Text("Save"),
                                onPressed: () {}),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }

  Widget profileData(BuildContext context, String title) {
    Size size = MediaQuery.of(context).size;
    TextStyle _pDataStyle = TextStyle(fontSize: size.width * 0.04);
    return Padding(
      padding: EdgeInsets.only(bottom: size.height * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: size.width * 0.29,
            child: Text(
              title,
              style: _pDataStyle,
            ),
          ),
          Text(
            ":",
            style: _pDataStyle,
          ),
          Container(
              height: size.width * 0.07,
              width: size.width * 0.6,
              child: TextField())
        ],
      ),
    );
  }
}
