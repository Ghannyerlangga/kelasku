import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.3,

      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('asset/img/banner_pilih_kelas.png'))),
      // child: Stack(
      //   alignment: Alignment.bottomRight,
      //   children: <Widget>[
      //     Container(
      //       padding: EdgeInsets.only(
      //           left: size.width * 0.05, right: size.width * 0.29),
      //       width: size.width,
      //       height: size.height * 0.3,
      //       child: Center(
      //         child: Text(
      //           "Pilih lah kelas sesuai dengan tingakatan kelasmu pada sekolah saat ini ya!",
      //           style: TextStyle(fontSize: size.width * 0.05),
      //         ),
      //       ),
      //     ),
      //     Container(
      //       height: size.width * 0.2,
      //       width: size.width * 0.25,
      //       decoration: BoxDecoration(
      //         image: DecorationImage(
      //             image: AssetImage(
      //           "asset/img/maskot_kepala.png",
      //         )),
      //       ),
      //     )
      //   ],
      // ),
    );
  }
}
