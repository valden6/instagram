import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/widgets/user-account/userAccountActions.dart';
import 'package:instagram/widgets/user-account/user-account-content/userAccountContent.dart';
import 'package:instagram/widgets/user-account/userAccountInfos.dart';
import 'package:instagram/widgets/user-account/userAccountStory.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Persistent AppBar that never scrolls
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          width: MediaQuery.of(context).size.width/3 * 2,
          child: Padding(
            padding: EdgeInsets.only(left:5),
            child: Text("EricMatt", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          )
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.plus, size:22, color: Colors.white)
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.bars, size:22, color: Colors.white)
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
                    UserAccountInfos(),
                    Padding(padding: EdgeInsets.only(top:8)),
                    UserAccountActions(),
                    Padding(padding: EdgeInsets.only(top:8)),
                    UserAccountStory(),
                    Padding(padding: EdgeInsets.only(top:8)),
                  ]
                )
              )
            ];
          },
          body: UserAccountContent()
        )
      )
    );
  }
}