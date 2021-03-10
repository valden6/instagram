import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserContentStory extends StatefulWidget {
  @override
  _UserContentStoryState createState() => _UserContentStoryState();
}

class _UserContentStoryState extends State<UserContentStory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: MediaQuery.of(context).size.width,
      height: 110,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                
                String userName = (index % 3 == 0) ? "Silvia Doe" : "John Deaux";
                Color color = (index % 3 == 0) ? Colors.red : Colors.black;
                String userImg = (index % 3 == 0) ? "assets/story-content-account-1.jpg" : "assets/story-content-account-2.jpg";
                      
                if (index == 0){
                  return Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Container(
                          height: 80.0,
                          width: 80.0,
                          margin: EdgeInsets.only(
                            left: 5.0,
                            right: 5.0
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/pp.jpg")
                            )
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: 50,
                                left: 50,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100.0),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 5
                                    )
                                  ),
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.blue,
                                    child: FaIcon(FontAwesomeIcons.plus, size: 15, color: Colors.white)
                                  ),
                                )
                              )
                            ],
                          )
                        ),
                        Padding(padding: EdgeInsets.only(top: 4)),
                        Text("Your story", style: TextStyle(color: Colors.white),)
                      ]
                    )
                  );
                }

                return Column(
                  children: [
                    Container(
                      height: 80.0,
                      width: 80.0,
                      margin: EdgeInsets.only(
                        left: 5.0,
                        right: 5.0
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                          width: 4.0,
                          style:BorderStyle.solid ,
                          color: color
                        ),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(userImg)
                        )
                      )
                    ),
                    Padding(padding: EdgeInsets.only(top: 4)),
                    Text(userName, style: TextStyle(color: Colors.white),)
                  ]
                );
              }
            )
          )
        ]
      )
    );
  }
}