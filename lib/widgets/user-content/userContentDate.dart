import 'package:flutter/material.dart';

class UserContentDate extends StatelessWidget {

  final String userDate;

  UserContentDate({this.userDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:15),
      width: MediaQuery.of(context).size.width,
      child: Text(userDate, style: TextStyle(color: Colors.grey, fontSize: 10)),
    );
  }
}