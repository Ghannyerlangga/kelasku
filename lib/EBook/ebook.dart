import 'dart:ui';

import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EbookPage extends StatefulWidget {
  @override
  _EbookPageState createState() => _EbookPageState();
}

class _EbookPageState extends State<EbookPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                top: size.width * 0.1,
                left: size.width * 0.07,
                right: size.width * 0.07),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Selamat Membaca",
                    style: TextStyle(
                        fontSize: size.height * 0.045,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: size.height * 0.02),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25), color: kBgColor),
                  child: TextField(
                    style: TextStyle(fontSize: size.height * 0.02),
                    decoration: new InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.all(0),
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25),
                        ),
                        prefixIcon: new Icon(
                          Icons.search,
                          size: size.height * 0.03,
                        ),
                        hintText: 'Cari'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.05, bottom: size.height * 0.05),
                  child: Container(
                    child: Center(child: Text("Banner")),
                    decoration: BoxDecoration(
                        color: kBgColor,
                        borderRadius: BorderRadius.circular(15)),
                    width: size.width,
                    height: size.height * 0.2,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: size.height * 0.05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.book,
                              size: size.width * 0.1, color: Colors.blue[100]),
                          Text("Buku Sekolah")
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.book,
                              size: size.width * 0.1,
                              color: Colors.orange[300]),
                          Text("Buku Cerita")
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.book,
                              size: size.width * 0.1, color: Colors.blue[300]),
                          Text("Pilih Kategori")
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Rekomendasi",
                      style: TextStyle(
                          fontSize: size.height * 0.03,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: <Widget>[
                        Text("Lihat lagi"),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    )
                  ],
                ),
                Divider(color: kBgColor),
                Container(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                          decoration: BoxDecoration(
                              color: kBgColor,
                              borderRadius: BorderRadius.circular(15)),
                          height: size.height * 0.2,
                          width: size.width * 0.25),
                      Container(
                          decoration: BoxDecoration(
                              color: kBgColor,
                              borderRadius: BorderRadius.circular(15)),
                          height: size.height * 0.2,
                          width: size.width * 0.25),
                      Container(
                          decoration: BoxDecoration(
                              color: kBgColor,
                              borderRadius: BorderRadius.circular(15)),
                          height: size.height * 0.2,
                          width: size.width * 0.25)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // Padding(
        //   padding: EdgeInsets.only(top: size.height * 0.03),
        //   child: IconButton(
        //       icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        //       onPressed: () {
        //         Navigator.pop(context);
        //       }),
        // )
      ],
    ));
  }
}
