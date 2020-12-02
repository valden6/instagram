import 'package:flutter/material.dart';

class UserContentDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:15),
      width: MediaQuery.of(context).size.width,
      child: Text("3 days ago", style: TextStyle(color: Colors.grey, fontSize: 10)),
    );
  }
}