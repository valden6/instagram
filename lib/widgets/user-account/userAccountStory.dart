import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserAccountStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {

                if (index == 4){
                  return Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: FlatButton(
                            onPressed: () {},
                            shape: CircleBorder(
                              side: BorderSide(color: Colors.grey, width: 0.5)
                            ),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              child: FaIcon(FontAwesomeIcons.plus, color: Colors.white)
                            ),
                          )
                        ),
                        Padding(padding: EdgeInsets.only(top:4)),
                        Text("New", style: TextStyle(color: Colors.white,fontSize: 16))
                      ]
                    )
                  );
                }

                return Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: FlatButton(
                          onPressed: () {},
                          shape: CircleBorder(
                            side: BorderSide(color: Colors.grey)
                          ),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/pin-story.jpg")
                          ),
                        )
                      ),
                      Padding(padding: EdgeInsets.only(top:4)),
                      Text("Paris", style: TextStyle(color: Colors.white,fontSize: 16))
                    ]
                  )
                );
              }
            )
          )
        ]
      )
    );
  }
}