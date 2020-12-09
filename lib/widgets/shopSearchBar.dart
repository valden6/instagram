import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10),
      width: MediaQuery.of(context).size.width,
      height: 30,
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
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.white.withOpacity(0.3),fontWeight: FontWeight.bold),
          )
        )
      )
    );
  }
}