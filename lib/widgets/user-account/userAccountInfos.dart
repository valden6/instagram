import 'package:flutter/material.dart';

class UserAccountInfos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: CircleAvatar(backgroundImage: AssetImage("assets/pp.jpg"),radius: 50))
              ),
              Expanded(
                flex: 4,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Center(child: Text("12", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold))),
                              Center(child: Text("Posts", style: TextStyle(fontSize: 18, color: Colors.white)))
                            ]
                          )
                        )
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Center(child: Text("228", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold))),
                              Center(child: Text("Followers", style: TextStyle(fontSize: 18, color: Colors.white)))
                            ]
                          )
                        )
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Center(child: Text("205", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold))),
                              Center(child: Text("Following", style: TextStyle(fontSize: 18, color: Colors.white)))
                            ]
                          )                    
                        )
                      )
                    ]
                  )
                )
              )
            ]
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left:15),
            child: Text("Eric Matthieu", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Padding(padding: EdgeInsets.only(top:4)),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left:15),
            child: Text("Software Engineer", style: TextStyle(color: Colors.white, fontSize: 16)),
          )
        ]
      )
    );
  }
}