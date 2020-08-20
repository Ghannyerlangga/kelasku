import 'package:belajar_asyik/Dashboard/components/navbar_item.dart';
import 'package:belajar_asyik/Dashboard/components/pengumuman.dart';
import 'package:belajar_asyik/Dashboard/components/semester.dart';
import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  int _currentIndex = 1;

  List _children = [
    NotifikasiPage(),
    SemesterPage(),
    Center(
      child: Text("Games"),
    ),
    Center(
      child: Text("Profile"),
    )
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Container(
          color: Colors.orange[300],
        ),
      ),
      body: _children[_currentIndex - 1],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(color: fieldColor),
          iconSize: 20,
          selectedItemColor: fieldColor,
          currentIndex: _currentIndex,
          items: [
            navBarItem(
                "List",
                IconButton(
                    icon: Icon(Icons.view_headline),
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    }),
                size),
            navBarItem("Notifikasi", Icon(Icons.notifications_active), size),
            navBarItem("Home", Icon(Icons.home), size),
            navBarItem("Game", Icon(Icons.gamepad), size),
            navBarItem("Profile", Icon(Icons.person), size),
          ],
          onTap: (index) {
            setState(() {
              if (index > 0) {
                _currentIndex = index;
              }
            });
          },
        ),
      ),
    );
  }
}
