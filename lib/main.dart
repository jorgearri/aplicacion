import 'package:aplicacion/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:aplicacion/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      //home: ProfileScreen(),
      home:Home(),
    );
  }
}


