import 'package:flutter/material.dart';

class UserAccountContentIdentifiedPic extends StatefulWidget {
  @override
  _UserAccountContentIdentifiedPicState createState() => _UserAccountContentIdentifiedPicState();
}

class _UserAccountContentIdentifiedPicState extends State<UserAccountContentIdentifiedPic> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {

           String userImg = (index % 3 == 0) ? "assets/identified-post-1.jpg" : "assets/identified-post-2.jpg";

          return Card(
            margin: EdgeInsets.all(1),
            color: Colors.transparent,
            child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset(userImg)
            )
          );
        }
      )
    );
  }
}