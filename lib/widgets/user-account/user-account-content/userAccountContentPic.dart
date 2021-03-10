import 'package:flutter/material.dart';

class UserAccountContentPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 14,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          
          String userImg = (index % 3 == 0) ? "assets/post-content-1.jpg" : "assets/post-content-3.jpg";

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