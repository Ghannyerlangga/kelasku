import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';

class IPAPage extends StatelessWidget {
  _showModalBottomSheet(context) {
    Size size = MediaQuery.of(context).size;
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: size.height * 0.4,
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.08, horizontal: size.width * 0.04),
            decoration: BoxDecoration(
                color: Color(0xFFA3DB67),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Row(
              children: <Widget>[
                Container(
                  width: size.width * 0.6,
                  child: Text(
                    "Dalam topik ini kita akan mempelajarai organ apa saja yang manusia dan hewan gunakan untuk bernapas serta bagaimana proses pernapasan terjadi.",
                    style: TextStyle(
                        color: pageColor, fontSize: size.height * 0.025),
                  ),
                ),
                Container(
                  width: size.width * 0.3,
                  child: Image.asset(
                    "asset/img/maskot_kelas.png",
                    height: size.height * 0.2,
                  ),
                )
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: pageColor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.08, horizontal: size.width * 0.04),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    width: size.width * 0.9,
                    height: size.height * 0.2,
                    decoration: BoxDecoration(
                      color: Color(0xFFD2F1B1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: size.height * 0.2,
                          width: size.width * 0.3,
                          child: Image.asset("asset/img/logo_ipa.png"),
                        ),
                        Container(
                          height: size.height * 0.2,
                          width: size.width * 0.3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "IPA",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF618B35),
                                    fontSize: size.height * 0.07),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            height: size.height * 0.2, width: size.width * 0.2),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return IPAPage();
                      }));
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      width: size.width * 0.9,
                      height: size.height * 0.1,
                      decoration: BoxDecoration(
                        color: Color(0xFFD2F1B1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: size.width * 0.7,
                            child: Text(
                              "Organ Pernapasan pada Manusia dan Hewan",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(fontSize: size.height * 0.024),
                            ),
                          ),
                          Container(
                            width: size.width * 0.1,
                            child: IconButton(
                                icon: Icon(Icons.help_outline),
                                onPressed: () {
                                  _showModalBottomSheet(context);
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    width: size.width * 0.9,
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Color(0xFFD2F1B1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: size.width * 0.7,
                          child: Text(
                            "Makanan dan Pencernaan pada Manusia",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(fontSize: size.height * 0.024),
                          ),
                        ),
                        Container(
                          width: size.width * 0.1,
                          child: IconButton(
                              icon: Icon(Icons.help_outline),
                              onPressed: () {
                                _showModalBottomSheet(context);
                              }),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    width: size.width * 0.9,
                    height: size.height * 0.1,
                    decoration: BoxDecoration(
                      color: Color(0xFFD2F1B1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: size.width * 0.7,
                          child: Text(
                            "Sistem Peredaran Darah",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(fontSize: size.height * 0.024),
                          ),
                        ),
                        Container(
                          width: size.width * 0.1,
                          child: IconButton(
                              icon: Icon(Icons.help_outline),
                              onPressed: () {
                                _showModalBottomSheet(context);
                              }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
