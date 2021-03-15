import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReelActions extends StatefulWidget {
  @override
  _ReelActionsState createState() => _ReelActionsState();
}

class _ReelActionsState extends State<ReelActions> {

  FaIcon _likeButton = FaIcon(FontAwesomeIcons.solidHeart, color: Colors.grey, size: 28);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if(_likeButton.color == Colors.grey){
                          _likeButton = FaIcon(FontAwesomeIcons.solidHeart, color: Colors.red, size: 28);
                        }else{
                          _likeButton = FaIcon(FontAwesomeIcons.solidHeart, color: Colors.grey, size: 28);
                        }
                      });
                    },
                    child: _likeButton
                  ),
                  FaIcon(FontAwesomeIcons.solidComment, color: Colors.grey, size: 28),
                  FaIcon(FontAwesomeIcons.solidPaperPlane, color: Colors.grey, size: 28),
                  FaIcon(FontAwesomeIcons.solidBookmark, color: Colors.grey, size: 26),
                  FaIcon(FontAwesomeIcons.ellipsisH, color: Colors.grey, size: 20),
                ]
              )
            )
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.solidHeart, color: Colors.white, size: 15),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                        Text("17,1K", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13))
                      ]
                    )
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                  Container(
                    child: Row(
                      children: [
                        FaIcon(FontAwesomeIcons.solidComment, color: Colors.white, size: 15),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                        Text("3762", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13))
                      ]
                    )
                  )
                ]
              )
            )
          )
        ]
      )
    );
  }
}