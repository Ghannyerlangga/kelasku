import 'package:belajar_asyik/Dashboard/components/navbar_item.dart';
import 'package:belajar_asyik/Dashboard/components/home.dart';
import 'package:belajar_asyik/Dashboard/components/profile.dart';
import 'package:belajar_asyik/Dashboard/components/semester.dart';
import 'package:belajar_asyik/Dashboard/components/pengumuman.dart';
import 'package:belajar_asyik/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<Dashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  int _currentIndex = 1;
  int _value = 1;

  List _children = [
    PengumumanPage(),
    HomePage(),
    Center(
      child: Text("Games"),
    ),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.04),
                child: Container(
                    // child: Row(
                    //   children: <Widget>[
                    //     Padding(
                    //       padding: EdgeInsets.only(
                    //           left: size.width * 0.03, right: size.width * 0.03),
                    //       child: Container(
                    //         width: size.width * 0.3,
                    //         height: size.height * 0.3,
                    //         decoration: BoxDecoration(
                    //             shape: BoxShape.circle, color: fieldColor),
                    //       ),
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       mainAxisAlignment: MainAxisAlignment.start,
                    //       children: <Widget>[
                    //         Text("Nama User"),
                    //         Text("Sekolah user")
                    //       ],
                    //     )
                    //   ],
                    // ),
                    child: Center(
                        child: Text("KelasKu",
                            style: TextStyle(
                              color: kBgColor,
                              fontSize: size.width * 0.14,
                              fontWeight: FontWeight.bold,
                            )))),
              ),
              Divider(),
              drawerItem("Beranda", Icons.home, Colors.blue),
              ExpansionTile(
                leading:
                    Icon(Icons.add_to_home_screen, color: Colors.purple[200]),
                title:
                    Text("Kelas", style: TextStyle(color: Colors.purple[200])),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.2),
                    child: ListTile(
                      title: Text("Kelas 1",
                          style: TextStyle(color: Colors.purple[200])),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.2),
                    child: ListTile(
                      title: Text("Kelas 2",
                          style: TextStyle(color: Colors.purple[200])),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.2),
                    child: ListTile(
                      title: Text("Kelas 3",
                          style: TextStyle(color: Colors.purple[200])),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.2),
                    child: ListTile(
                      title: Text("Kelas 5",
                          style: TextStyle(color: Colors.purple[200])),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.2),
                    child: ListTile(
                      title: Text("Kelas 6",
                          style: TextStyle(color: Colors.purple[200])),
                    ),
                  ),
                ],
              ),
              drawerItem("Kalender", Icons.calendar_today, Colors.pink[200]),
              drawerItem("E-Rapor", Icons.star, Colors.orange),
              drawerItem("E-Book", Icons.book, Colors.green),
              drawerItem("Permainan", Icons.gamepad, Colors.amber),
              drawerItem("Pengaturan", Icons.settings, Colors.black)
            ],
          ),
          color: fieldColor,
        ),
      ),
      body: _children[_currentIndex - 1],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: BottomNavigationBar(
          selectedFontSize: 10,
          unselectedIconTheme: IconThemeData(color: fieldColor),
          iconSize: 20,
          selectedItemColor: fieldColor,
          currentIndex: _currentIndex,
          items: [
            navBarItem(
                "List",
                IconButton(
                    padding: EdgeInsets.only(bottom: size.height * 0.01),
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

  Widget drawerItem(String title, IconData icon, Color color) {
    return ListTile(
      enabled: true,
      leading: Icon(
        icon,
        color: color,
      ),
      title: Text(
        title,
        style: TextStyle(color: color),
      ),
    );
  }
}
