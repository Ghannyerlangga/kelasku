import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget body;
  final Widget header;
  const Background({
    Key key,
    @required this.body,
    @required this.header,
    this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
          left: size.width * 0.05,
          right: size.width * 0.05,
          top: size.width * 0.05),
      height: size.height,
      width: size.width,
      child: Stack(alignment: Alignment.bottomLeft, children: <Widget>[
        Container(
          width: size.width * 0.4,
          height: size.height * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("asset/img/log_reg_maskot.png"))),
        ),
        header,
        body
      ]),
    );
  }
}
