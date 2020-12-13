import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReelActions extends StatefulWidget {
  @override
  _ReelActionsState createState() => _ReelActionsState();
}

class _ReelActionsState extends State<ReelActions> {

  FaIcon _likeButton = FaIcon(FontAwesomeIcons.heart, color: Colors.white, size: 28);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/40 * 3),
      height: MediaQuery.of(context).size.height - 80,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: FaIcon(FontAwesomeIcons.camera, color: Colors.white, size: 28)
              )
          ),
          Expanded(
            flex: 9,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if(_likeButton.color == Colors.white){
                          _likeButton = FaIcon(FontAwesomeIcons.solidHeart, color: Colors.red, size: 28);
                        }else{
                          _likeButton = FaIcon(FontAwesomeIcons.heart, color: Colors.white, size: 28);
                        }
                      });
                    },
                    child: _likeButton
                  ),
                  Padding(padding: EdgeInsets.only(top:6)),
                  Text("17,1K", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.only(top:20)),
                  FaIcon(FontAwesomeIcons.comment, color: Colors.white, size: 28),
                  Padding(padding: EdgeInsets.only(top:6)),
                  Text("3762", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  Padding(padding: EdgeInsets.only(top:20)),
                  FaIcon(FontAwesomeIcons.paperPlane, color: Colors.white, size: 28),
                  Padding(padding: EdgeInsets.only(top:20)),
                  FaIcon(FontAwesomeIcons.ellipsisH, color: Colors.white, size: 20),
                ]
              )
            )
          )
        ]
      )
    );
  }
}