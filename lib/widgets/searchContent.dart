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
          itemCount: 18,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {

            String content = (index % 3 == 0) ? "assets/search-content-1.jpg" : "assets/search-content-2.jpg";
                
            return Container(
              margin: EdgeInsets.all(1),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(content)
                )
              )
            );
          }
        )
      )
    );
  }
}