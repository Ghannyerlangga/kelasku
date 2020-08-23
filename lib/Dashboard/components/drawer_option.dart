import 'package:flutter/material.dart';
import 'package:belajar_asyik/constants.dart';

class DrawerOption extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final String title;
  const DrawerOption({Key key, this.onTap, this.icon, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      enabled: true,
      leading: Icon(
        icon,
        color: kBgColor,
      ),
      title: Text(title, style: TextStyle(color: kBgColor)),
    );
  }
}
