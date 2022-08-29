import 'package:flutter/material.dart';
import 'package:flutter_1/screens/splash.dart';
import 'package:flutter_1/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MainScreen(),
      theme: ThemeData(
          textTheme: TextTheme(
        headline1: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFF6C63FF),
        ),
        headline2: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Colors.black,
        ),
        headline3: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFF6C63FF),
        ),
        headline4: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        ),
      )),
    );
  }
}
