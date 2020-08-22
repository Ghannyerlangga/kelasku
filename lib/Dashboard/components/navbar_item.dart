import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';

BottomNavigationBarItem navBarItem(String title, Widget icon, Size size) {
  return new BottomNavigationBarItem(
      backgroundColor: kBgColor,
      icon: new SizedBox(
        child: icon,
        width: size.width * 0.1,
        height: size.height * 0.025,
      ),
      title: new Text(
        title,
        style: new TextStyle(fontSize: 12),
      ));
}
