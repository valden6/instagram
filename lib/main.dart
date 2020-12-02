import 'package:flutter/material.dart';
import 'package:instagram/app.dart';

void main() {
  runApp(InstagramApp());
}

class InstagramApp extends StatefulWidget {
  @override
  _InstagramAppState createState() => _InstagramAppState();
}

class _InstagramAppState extends State<InstagramApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "SF", backgroundColor: Colors.black),
      home: App()
    );
  }
}

