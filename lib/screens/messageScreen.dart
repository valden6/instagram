import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/widgets/messageGeneralBox.dart';
import 'package:instagram/widgets/messagePrimaryBox.dart';

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
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
              Expanded(
                flex: 8,
                child: Container(
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: FaIcon(FontAwesomeIcons.chevronLeft)
                      ),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text("EricMatt",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 3)),
                      FaIcon(FontAwesomeIcons.chevronDown,size: 15)
                    ]
                  )
                )
              ),
              Expanded(
                flex: 2,
                child: Container(
                  child: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.listUl),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                      FaIcon(FontAwesomeIcons.edit)
                    ]
                  )
                )
              )
            ]
          )
        )
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left:10)),
                    Expanded(
                      flex: 9,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.withOpacity(0.3)
                        ),
                        child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          style: TextStyle(color: Colors.white),
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(10.0),
                            prefixIconConstraints: BoxConstraints(minWidth: 30),
                            border: InputBorder.none,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left:10, right: 10),
                              child: FaIcon(FontAwesomeIcons.search, color: Colors.white.withOpacity(0.3), size: 15),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:15,vertical: 7),
                              child: FaIcon(FontAwesomeIcons.stream, color: Colors.white.withOpacity(0.3), size: 15),
                            ),
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.white.withOpacity(0.3),fontWeight: FontWeight.bold),
                          )
                        )
                      )
                    ),
                    Padding(padding: EdgeInsets.only(left:10))
                  ]
                )
              ),
              DefaultTabController(
                length: 2,
                initialIndex: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 630,
                  child: Column(
                    children: [
                      TabBar(
                        indicatorColor: Colors.white,
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.grey[700],
                        indicatorWeight: 1,
                        tabs: [
                          Tab(child: Text("Primary",style: TextStyle(fontWeight: FontWeight.bold))),
                          Tab(child: Text("General",style: TextStyle(fontWeight: FontWeight.bold))),
                        ]
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Container(
                              child: MessagePrimaryBox(),              
                            ),
                            Container(
                              child: MessageGeneralBox(),
                            )
                          ]
                        )
                      )
                    ]
                  )
                )
              )
            ]
          )
        )
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.black,
        child: InkWell(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FaIcon(FontAwesomeIcons.camera,color:Colors.blue),
              Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
              Text("Camera",style: TextStyle(color: Colors.blue)),
            ]
          )
        )
      )
    );
  }
}