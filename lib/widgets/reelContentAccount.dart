import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReelContentAccount extends StatefulWidget {
  @override
  _ReelContentAccountState createState() => _ReelContentAccountState();
}

class _ReelContentAccountState extends State<ReelContentAccount> {
  
  Text _followButton = Text("Follow", style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold));
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(padding: EdgeInsets.only(left:20)),
          CircleAvatar(backgroundImage: AssetImage('assets/reel-account-icon.jpg')),
          Padding(padding: EdgeInsets.only(left:10)),
          Container(
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("tankensurujapan", style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                Padding(padding: EdgeInsets.only(left:10)),
                FaIcon(FontAwesomeIcons.solidCircle, color: Colors.white, size: 5),
                Padding(padding: EdgeInsets.only(left:10)),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if(_followButton.data == "Follow"){
                        _followButton = Text("Following", style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold));
                      }else{
                        _followButton = Text("Follow", style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold));
                      }
                    });
                  },
                  child: _followButton
                )
              ]
            )
          )
        ]
      )
    );
  }
}