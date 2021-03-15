import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/widgets/shopContent.dart';
import 'package:instagram/widgets/shopSearchBar.dart';
import 'package:instagram/widgets/shopCategory.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
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
                  delegate: SliverChildListDelegate(
                    [
                      AppBar(
                        backgroundColor: Colors.black,
                        centerTitle: false,
                        title: Text("Shop", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                        actions: [
                           IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.bookmark, size:22, color: Colors.white)
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(FontAwesomeIcons.bars, size:22, color: Colors.white)
                          )
                        ]
                      )
                    ]
                  )
                )
              ];
            },
            body: Container(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 8)),
                  ShopSearchBar(),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  ShopCategory(),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  ShopContent()
                ]
              ),
            )
          )
        )
      ),
    );
  }
}