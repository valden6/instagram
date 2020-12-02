import 'package:flutter/material.dart';

class UserContentLegend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left:15),
          width: MediaQuery.of(context).size.width,
          child: Text("Liked by amsih and others", style: TextStyle(color: Colors.white))
        ),
        Padding(padding: EdgeInsets.only(bottom: 4)),
        Container(
          padding: EdgeInsets.only(left:15),
          width: MediaQuery.of(context).size.width,
          child: Text("EricMatt Early Montana mornings", style: TextStyle(color: Colors.white))
        )
      ]
    );
  }
}