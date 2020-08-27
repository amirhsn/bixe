import 'package:bixe/screen/mainPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BIXE',
      theme: ThemeData(
        fontFamily: 'Montserrat'
      ),
      home: MainPage(),
    );
  }
}