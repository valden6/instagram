import 'package:flutter/material.dart';

class UserContent extends StatelessWidget {

  final String userPic;

  UserContent({this.userPic});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(userPic)
    );
  }
}