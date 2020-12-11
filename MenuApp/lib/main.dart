import 'package:flutter/material.dart';
import './screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bluz De`Cafe",
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
