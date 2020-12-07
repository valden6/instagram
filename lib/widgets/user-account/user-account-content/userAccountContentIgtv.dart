import 'package:flutter/material.dart';

class UserAccountContentIgtv extends StatefulWidget {
  @override
  _UserAccountContentIgtvState createState() => _UserAccountContentIgtvState();
}

class _UserAccountContentIgtvState extends State<UserAccountContentIgtv> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            margin: EdgeInsets.all(4),
            color: Colors.transparent,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(Colors.grey, BlendMode.darken),
                        image: AssetImage("assets/igtv-post.jpg"),
                        fit: BoxFit.fill
                      )
                    )
                  )
                ),
                Positioned(
                  left: 0,
                  bottom: 30,
                  height: 35,
                  width: 183,
                  child: Container(
                    margin: EdgeInsets.only(left:6, right: 6),
                    child: Text("Le fondateur d'instagram en conférence", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                  )
                ),
                Positioned(
                  left: 0,
                  bottom: 15,
                  height: 15,
                  width: 183,
                  child: Container(
                    margin: EdgeInsets.only(left:6, right: 6),
                    child: Text("252K views", style: TextStyle(color: Colors.grey[200], fontSize: 10))
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