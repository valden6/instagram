import 'package:flutter/material.dart';

class UserContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset("assets/brooklyn.jpg")
    );
  }
}