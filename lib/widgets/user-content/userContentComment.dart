import 'package:flutter/material.dart';

class UserContentComment extends StatelessWidget {
  
  String userFriend1;
  String userFriend2;

  UserContentComment({this.userFriend1,this.userFriend2});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left:15, right: 20),
            width: MediaQuery.of(context).size.width,
            child: Text(userFriend1, style: TextStyle(color: Colors.white))
          ),
          Padding(padding: EdgeInsets.only(bottom: 6)),
          Container(
            padding: EdgeInsets.only(left:15),
            width: MediaQuery.of(context).size.width,
            child: Text(userFriend2, style: TextStyle(color: Colors.white))
          )
        ]
      )
    );
  }
}