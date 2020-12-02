import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserContentActions extends StatefulWidget {
  @override
  _UserContentActionsState createState() => _UserContentActionsState();
}

class _UserContentActionsState extends State<UserContentActions> {

  FaIcon _likeButton = FaIcon(FontAwesomeIcons.heart, size:20, color: Colors.white);
  FaIcon _saveButton = FaIcon(FontAwesomeIcons.bookmark, size:20, color: Colors.white);

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
                  IconButton(
                    onPressed: () {
                      setState(() {
                        if(_likeButton.color == Colors.white){
                          _likeButton = FaIcon(FontAwesomeIcons.solidHeart, size:20, color: Colors.red);
                        }else{
                          _likeButton = FaIcon(FontAwesomeIcons.heart, size:20, color: Colors.white);
                        }
                      });
                    },
                    icon: _likeButton
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.comment, size:20, color: Colors.white)
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.paperPlane, size:20, color: Colors.white)
                  )
                ]
              )
            )
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    if(_saveButton.icon == FontAwesomeIcons.bookmark){
                      _saveButton = FaIcon(FontAwesomeIcons.solidBookmark, size:20, color: Colors.white);
                    }else{
                      _saveButton = FaIcon(FontAwesomeIcons.bookmark, size:20, color: Colors.white);
                    }
                  });
                },
                icon: _saveButton
              )
            )
          )
        ]
      )
    );
  }
}