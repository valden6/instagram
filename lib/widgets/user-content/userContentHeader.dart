import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserContentHeader extends StatelessWidget {

  String userPp;
  String userName;
  String userLocation;

  UserContentHeader({this.userPp, this.userName, this.userLocation});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 9,
            child: Container(
              child: Row(
                children: [
                  Padding(padding: EdgeInsets.only(left:10)),
                  CircleAvatar(backgroundImage: AssetImage(userPp)),
                  Padding(padding: EdgeInsets.only(left:10)),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(userName, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Text(userLocation, style: TextStyle(color: Colors.white, fontSize: 12))
                      ]
                    )
                  )
                ]
              )
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.ellipsisH, size:15, color: Colors.white), 
              )
            )
          )
        ]
      )
    );
  }
}