import 'package:dark_mode_food_app/constants/constants.dart';
import 'package:dark_mode_food_app/ui/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-menu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: kPrimaryColor,
      ),
      home: Home(),
    );
  }
}