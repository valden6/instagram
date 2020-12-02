import 'package:flutter/material.dart';

class UserContentComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left:15, right: 20),
            width: MediaQuery.of(context).size.width,
            child: Text("NadineM Incredible country and beautiful landscape and nice pic, i would like to go here if i can", style: TextStyle(color: Colors.white))
          ),
          Padding(padding: EdgeInsets.only(bottom: 6)),
          Container(
            padding: EdgeInsets.only(left:15),
            width: MediaQuery.of(context).size.width,
            child: Text("Boby30 Nice pic bro !!!", style: TextStyle(color: Colors.white))
          )
        ]
      )
    );
  }
}