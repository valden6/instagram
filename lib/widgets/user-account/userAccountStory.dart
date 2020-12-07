import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserAccountStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {

                if (index == 3){
                  return Container(
                    child: Column(
                      children: [
                        Expanded(
                          child: FlatButton(
                            onPressed: () {},
                            shape: CircleBorder(
                              side: BorderSide(color: Colors.white, width: 0.5)
                            ),
                            child: CircleAvatar(
                              radius: 35,
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
                            side: BorderSide(color: Colors.white)
                          ),
                          child: CircleAvatar(
                            radius: 35,
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