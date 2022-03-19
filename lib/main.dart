// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pet_finder_hn/screens/home/home_screen.dart';
import 'package:pet_finder_hn/screens/login/login_screen.dart';
import 'package:pet_finder_hn/screens/login/logup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Finder HN',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'homepage',
      routes: {
        'login': (_) => LoginScreen(),
        'logup': (_) => LogUpScreen(),
        'homepage': (_) => HomePage(),
      },
    );
  }
}