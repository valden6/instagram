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
          return Card(
            margin: EdgeInsets.all(1),
            color: Colors.transparent,
            child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("assets/post-content.jpg")
            )
          );
        }
      )
    );
  }
}