import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Container(
        color: Colors.black,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 9,
                        child: Container(
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.only(left:10)),
                              CircleAvatar(backgroundImage: AssetImage('assets/icon.png')),
                              Padding(padding: EdgeInsets.only(left:10)),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("EricMatt", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                                    Text("Montana", style: TextStyle(color: Colors.white, fontSize: 12))
                                  ]
                                )
                              )
                            ]
                          )
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.ellipsisH, size:15, color: Colors.white), 
                          )
                        ),
                      )
                    ]
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 4)),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset("assets/brooklyn.jpg")
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 9,
                        child: Container(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.heart, size:20, color: Colors.white)
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.comment, size:20, color: Colors.white)
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.paperPlane, size:20, color: Colors.white)
                              )
                            ]
                          )
                        )
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.bookmark, size:20, color: Colors.white)
                          )
                        )
                      )
                    ]
                  ),
                  Container(
                    padding: EdgeInsets.only(left:15),
                    width: MediaQuery.of(context).size.width,
                    child: Text("Liked by amsih and others", style: TextStyle(color: Colors.white))
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 4)),
                  Container(
                    padding: EdgeInsets.only(left:15),
                    width: MediaQuery.of(context).size.width,
                    child: Text("EricMatt Early Montana mornings", style: TextStyle(color: Colors.white))
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 8)),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left:15, right: 20),
                          width: MediaQuery.of(context).size.width,
                          child: Text("NadineM Incredible country and beautiful landscape and nice pic, i would like to go here if i can", style: TextStyle(color: Colors.white))
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 6)),
                        Container(
                          padding: EdgeInsets.only(left:15),
                          width: MediaQuery.of(context).size.width,
                          child: Text("Boby30 Nice pic bro !!!", style: TextStyle(color: Colors.white))
                        )
                      ]
                    )
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 6)),
                  Container(
                    padding: EdgeInsets.only(left:15),
                    width: MediaQuery.of(context).size.width,
                    child: Text("3 days ago", style: TextStyle(color: Colors.grey, fontSize: 10)),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15)),
                ]
              )
            );
          }
        ),
      )
    );
  }
}