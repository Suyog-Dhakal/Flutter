import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "About",
        style: TextStyle(
          fontSize: 20.0,
        ),
      )),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          child: Text(
            "This is the menu app for ordering the food online.This app is developed by SUYOG DHAKAL using Flutter.\nThank you for using this app.",
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
