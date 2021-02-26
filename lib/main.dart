import 'package:flutter/material.dart';
import 'package:take_home_challenge_ammar/Screens/InstagramClone.dart';
import 'package:take_home_challenge_ammar/Screens/SelectScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Step-Up Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(),
        home: SelectScreen());
  }
}
