import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/widgets/user-account/userAccountStory.dart';
import 'package:instagram/widgets/user-content/userContent.dart';
import 'package:instagram/widgets/user-content/userContentActions.dart';
import 'package:instagram/widgets/user-content/userContentComment.dart';
import 'package:instagram/widgets/user-content/userContentDate.dart';
import 'package:instagram/widgets/user-content/userContentHeader.dart';
import 'package:instagram/widgets/user-content/userContentLegend.dart';
import 'package:instagram/widgets/user-content/userContentStory.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]); // Enable fullscreen on Android
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          width: MediaQuery.of(context).size.width/3,
          child: Image.asset("assets/logo-white.png")
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.plusSquare, size:22, color: Colors.white)
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.heart, size:22, color: Colors.white)
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.paperPlane, size:22, color: Colors.white)
          )
        ]
      ),
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    UserContentStory(),
                    Padding(padding: EdgeInsets.only(top:10))
                  ]
                )
              )
            ];
          },
          body: Container(
            color: Colors.black,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Column(
                    children: [
                      UserContentHeader(),
                      Padding(padding: EdgeInsets.only(bottom: 4)),
                      UserContent(),
                      UserContentActions(),
                      UserContentLegend(),
                      Padding(padding: EdgeInsets.only(bottom: 8)),
                      UserContentComment(),
                      Padding(padding: EdgeInsets.only(bottom: 6)),
                      UserContentDate(),
                      Padding(padding: EdgeInsets.only(bottom: 15)),
                    ]
                  )
                );
              }
            )
          )
        )
      )
    );
  }
}