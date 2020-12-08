import 'package:flutter/material.dart';

class SearchContent extends StatefulWidget {
  @override
  _SearchContentState createState() => _SearchContentState();
}

class _SearchContentState extends State<SearchContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 16,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              margin: EdgeInsets.all(1),
              color: Colors.transparent,
              child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.asset("assets/search-content.jpg")
              )
            );
          }
        )
      ),
    );
  }
}