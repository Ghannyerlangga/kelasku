import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';

class PelajaranPage extends StatefulWidget {
  final String nama;
  PelajaranPage({this.nama});
  @override
  _PelajaranPageState createState() => _PelajaranPageState();
}

class _PelajaranPageState extends State<PelajaranPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 8),
            child: Container(
              child: Center(
                child: Text(
                  widget.nama.toUpperCase(),
                  style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 8, 10, 0),
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      "asset/img/log_reg_maskot.png",
                    ),
                  )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: fieldColor,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[materi("Materi 1"), materi("Materi 2")],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget materi(String namaMateri) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(15, 8, 20, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(
                  Icons.book,
                  size: 30,
                  color: kTombol,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Materi 1",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            Icon(Icons.keyboard_arrow_down)
          ],
        ));
  }
}
