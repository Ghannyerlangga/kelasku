import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';

class Kelas extends StatelessWidget {
  final Widget child;
  const Kelas({
    Key key,
    @required this.child,
    this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          left: size.width * 0.05,
          right: size.width * 0.05,
          top: size.width * 0.05),
      child: Container(
          decoration: BoxDecoration(
              color: kBgColor, borderRadius: BorderRadius.circular(15)),
          height: size.height * 0.1,
          width: size.width * 0.4,
          child: Center(child: child)),
    );
  }
}
