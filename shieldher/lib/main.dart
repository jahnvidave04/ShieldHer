import 'package:flutter/material.dart';
import 'package:shieldher/home.dart';

const isMac = false;

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: HomePage(), // Set LoginScreen as the home
    );
  }
}