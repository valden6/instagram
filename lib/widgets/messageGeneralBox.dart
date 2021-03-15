import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MessageGeneralBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {

          Color color = (index % 3 == 0) ? Colors.grey : Colors.red;
          String userName = (index % 3 == 0) ? "Spencer Adh" : "Eva Courtnoi";
          String userImg = (index % 3 == 0) ? "assets/stranger-2.jpg" : "assets/stranger-1.jpg";
          String userDate = (index % 3 == 0) ? "Hi, do we know each other? • 1w" : "Hey, would you like... • 1w";
          
          return ListTile(
            leading: Container(
              height: 70,
              width: 55,
              margin: EdgeInsets.only(
                left: 5.0,
                right: 5.0
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                border: Border.all(
                  width:2,
                  style:BorderStyle.solid ,
                  color: color
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(userImg)
                )
              )
            ),
            title: Text(userName,style: TextStyle(color: Colors.white)),
            subtitle: Text(userDate,style: TextStyle(color: Colors.grey)),
            trailing: FaIcon(FontAwesomeIcons.camera,color: Colors.grey)
          );
        }
      )
    );
  }
}