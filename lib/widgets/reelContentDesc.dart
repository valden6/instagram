import 'package:flutter/material.dart';

class ReelContentDesc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 70),
        child: Text("Just sit back - Watch and enjoy the love, only get the most amazing animation", style: TextStyle(fontSize: 17,color: Colors.white)),
      )
    );
  }
}