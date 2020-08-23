import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget body;
  final Widget header;
  const Background({
    Key key,
    @required this.body,
    this.header,
    this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        children: <Widget>[header, body],
      ),
    );
  }
}
