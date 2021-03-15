import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: FaIcon(FontAwesomeIcons.chevronLeft)
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              Text("Activity",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
            ]
          )
        )
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("This Week",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 8,
                            child: Row(
                              children: [
                                Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                                Container(
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage("assets/friend-1.jpg"),
                                  )
                                ),
                                Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                                Container(
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(text:"_Britney_35",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                        TextSpan(text:" liked your post.",style: TextStyle(color: Colors.white)),
                                        TextSpan(text:" 5d",style: TextStyle(color: Colors.grey))
                                      ]
                                    )
                                  )
                                )
                              ]
                            )
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Image.asset("assets/post-content-2.jpg")
                            )
                          )
                        ]
                      )
                    )
                  ]
                )
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("This Month",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {

                        if(index % 3 == 0){
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Row(
                                    children: [
                                      Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                                      Container(
                                        child: CircleAvatar(
                                          radius: 22,
                                          backgroundImage: AssetImage("assets/friend-1.jpg"),
                                        )
                                      ),
                                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                                      Container(
                                        child: Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(text:"_Britney_35",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                                TextSpan(text:" commented: Very beautiful !!",style: TextStyle(color: Colors.white)),
                                                TextSpan(text:" 3w",style: TextStyle(color: Colors.grey))
                                              ]
                                            )
                                          )
                                        )
                                      )
                                    ]
                                  )
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Image.asset("assets/post-content-2.jpg")
                                  )
                                )
                              ]
                            )
                          );
                        } else {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Row(
                                    children: [
                                      Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                                      Container(
                                        child: CircleAvatar(
                                          radius: 22,
                                          backgroundImage: AssetImage("assets/stranger-1.jpg"),
                                        )
                                      ),
                                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                                      Container(
                                        child: Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(text:"_idonthavename57",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                                TextSpan(text:" started following you.",style: TextStyle(color: Colors.white)),
                                                TextSpan(text:" 2w",style: TextStyle(color: Colors.grey))
                                              ]
                                            )
                                          )
                                        )
                                      )
                                    ]
                                  )
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 3),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Center(child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 15)))
                                    ),
                                  )
                                )
                              ]
                            )
                          );
                        }
                      }
                    )
                  ]
                )
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.centerLeft,
                      child: Text("Earlier",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                    ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {

                        if(index % 3 == 0){
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 8,
                                  child: Row(
                                    children: [
                                      Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                                      Container(
                                        child: CircleAvatar(
                                          radius: 22,
                                          backgroundImage: AssetImage("assets/friend-1.jpg"),
                                        )
                                      ),
                                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                                      Container(
                                        child: Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(text:"_Britney_35",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                                TextSpan(text:" commented: Nice Brooklyn Bridge.",style: TextStyle(color: Colors.white)),
                                                TextSpan(text:" 21w",style: TextStyle(color: Colors.grey))
                                              ]
                                            )
                                          )
                                        )
                                      )
                                    ]
                                  )
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Image.asset("assets/post-content-1.jpg")
                                  )
                                )
                              ]
                            )
                          );
                        } else {
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 7,
                                  child: Row(
                                    children: [
                                      Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                                      Container(
                                        child: CircleAvatar(
                                          radius: 22,
                                          backgroundImage: AssetImage("assets/stranger-2.jpg"),
                                        )
                                      ),
                                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                                      Container(
                                        child: Expanded(
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(text:"Federico3949",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                                TextSpan(text:" who you might know, is on instagram.",style: TextStyle(color: Colors.white)),
                                                TextSpan(text:" 10w",style: TextStyle(color: Colors.grey))
                                              ]
                                            )
                                          )
                                        )
                                      )
                                    ]
                                  )
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(vertical: 3),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(3)
                                      ),
                                      child: Center(child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 15)))
                                    )
                                  )
                                )
                              ]
                            )
                          );
                        }
                      }
                    )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}