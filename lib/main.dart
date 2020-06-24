import 'package:flutter/material.dart';
import 'package:web_smashingmagazine/home.dart';
import 'package:web_smashingmagazine/login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Web Smashingmagazine',
      initialRoute: "/login",
      routes: {
        "/login": (context) => Login(),
        "/home": (context) => Home(),
      },
    ),
  );
}
