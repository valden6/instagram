import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/widgets/user-account/user-account-content/userAccountContentIdentifiedPic.dart';
import 'package:instagram/widgets/user-account/user-account-content/userAccountContentIgtv.dart';
import 'package:instagram/widgets/user-account/user-account-content/userAccountContentPic.dart';
import 'package:instagram/widgets/user-account/user-account-content/userAccountContentReel.dart';

class UserAccountContent extends StatefulWidget {
  @override
  _UserAccountContentState createState() => _UserAccountContentState();
}

class _UserAccountContentState extends State<UserAccountContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey[700],
          indicatorWeight: 1,
          tabs: [
            Tab(icon: FaIcon(FontAwesomeIcons.borderNone, size: 22)),
            Tab(icon: FaIcon(FontAwesomeIcons.video, size: 22)),
            Tab(icon: FaIcon(FontAwesomeIcons.tv, size: 22)),
            Tab(icon: FaIcon(FontAwesomeIcons.userCircle, size: 22))
          ]
        ),
        Expanded(
          child: TabBarView(
            children: [
              Container(
                child: UserAccountContentPic(),              
              ),
              Container(
                child: UserAccountContentReel(),
              ),
              Container(
                child: UserAccountContentIgtv(),
              ),
              Container(
                child: UserAccountContentIdentifiedPic(),              
              )
            ]
          )
        )
      ]
    );
  }
}