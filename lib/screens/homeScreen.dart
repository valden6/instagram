import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

                String userPp = (index % 3 == 0) ? "assets/pp.jpg" : "assets/story-content-account-2.jpg";
                String userName = (index % 3 == 0) ? "EricMatt" : "John Deaux";
                String userLocation = (index % 3 == 0) ? "Montana" : "Tahiti";
                String userImg = (index % 3 == 0) ? "assets/post-content-1.jpg" : "assets/post-content-2.jpg";
                String userImgLegend = (index % 3 == 0) ? "EricMatt Early New York Morning" : "John Deaux Incredible sunrise on the beach";
                String userfriend1 = (index % 3 == 0) ? "NadineM Incredible country and beautiful landscape and nice pic, i would like to go here if i can" : "EvaMoun Beautiful landscape and nice pic, bring me with u the next time";
                String userfriend2 = (index % 3 == 0) ? "Boby30 Nice pic bro !!!" : "BryanEhlm Omg i would be here !!! 😍";
                String userDate = (index % 3 == 0) ? "3 days ago" : "yesterday";
                
                return Container(
                  child: Column(
                    children: [
                      UserContentHeader(userName: userName, userPp: userPp, userLocation: userLocation),
                      Padding(padding: EdgeInsets.only(bottom: 4)),
                      UserContent(userPic: userImg),
                      UserContentActions(),
                      UserContentLegend(userPicLegend: userImgLegend),
                      Padding(padding: EdgeInsets.only(bottom: 8)),
                      UserContentComment(userFriend1: userfriend1,userFriend2: userfriend2),
                      Padding(padding: EdgeInsets.only(bottom: 6)),
                      UserContentDate(userDate: userDate),
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