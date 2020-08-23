import 'package:belajar_asyik/Dashboard/components/pengumuman.dart';
import 'package:belajar_asyik/Login/login.dart';
import 'package:belajar_asyik/Quiz/quiz.dart';
import 'package:flutter/material.dart';
import 'package:belajar_asyik/Kelas/pilih_kelas.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: QuizPage(),
    );
  }
}
