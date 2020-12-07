import 'package:flutter/material.dart';

class UserAccountActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {}, 
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: Colors.white)
              ),
              child: Text("Edit Profile", style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold))
            )
          ),
          Padding(padding: EdgeInsets.only(left: 5)),
          Expanded(
            child: FlatButton(
              onPressed: () {}, 
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: Colors.white)
              ),
              child: Text("Promotions", style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold))
            )
          ),
          Padding(padding: EdgeInsets.only(left: 5)),
          Expanded(
            child: FlatButton(
              onPressed: () {}, 
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: Colors.white)
              ),
              child: Text("Insights", style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold))
            )
          )
        ]
      )
    );
  }
}