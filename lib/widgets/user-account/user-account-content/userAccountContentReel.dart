import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserAccountContentReel extends StatefulWidget {
  @override
  _UserAccountContentReelState createState() => _UserAccountContentReelState();
}

class _UserAccountContentReelState extends State<UserAccountContentReel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.5,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(1),
            color: Colors.transparent,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/reel-post.jpg"),
                      fit: BoxFit.fill
                    )
                  )
                ),
                Positioned(
                  left: 0,
                  bottom: 10,
                  height: 15,
                  width: 183,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: FaIcon(FontAwesomeIcons.play,color: Colors.white, size: 11),
                      ),
                      Container(
                        margin: EdgeInsets.only(left:6, right: 6),
                        child: Text("10,1k", style: TextStyle(color: Colors.grey[200], fontSize: 11, fontWeight: FontWeight.bold))
                      )
                    ]
                  )
                )
              ]    
            )
          );
        }
      )
    );
  }
}