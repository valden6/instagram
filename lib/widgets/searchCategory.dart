import 'package:flutter/material.dart';

class SearchCategory extends StatefulWidget {
  @override
  _SearchCategoryState createState() => _SearchCategoryState();
}

class _SearchCategoryState extends State<SearchCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        itemCount: 5,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {

          String category = (index % 3 == 0) ? "Travel" : "Shop";
                
          return Container(
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
            child: FlatButton(
              onPressed: () {}, 
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey)
              ),
              child: Text(category, style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold))
            )
          );
        }
      )
    );
  }
}