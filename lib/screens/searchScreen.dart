import 'package:flutter/material.dart';
import 'package:instagram/widgets/searchBar.dart';
import 'package:instagram/widgets/searchCategory.dart';
import 'package:instagram/widgets/searchContent.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // Persistent AppBar that never scrolls
        backgroundColor: Colors.black,
        body: DefaultTabController(
          length: 4,
          child: NestedScrollView(
            headerSliverBuilder: (context, _) {
              return [
                SliverList(
                    delegate: SliverChildListDelegate([
                  SearchBar(),
                  Padding(padding: EdgeInsets.only(top: 8)),
                ]))
              ];
            },
            body: Container(
              child: Column(
                children: [
                  SearchCategory(),
                  SearchContent()
                ]
              ),
            )
          )
        )
      ),
    );
  }
}