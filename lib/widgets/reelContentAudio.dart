import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReelContentAudio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 90),
        child: Row(
          children: [
            FaIcon(FontAwesomeIcons.music, color: Colors.white, size: 18),
            Padding(padding: EdgeInsets.only(left: 10)),
            Text("Original Audio - takensurujapan", style: TextStyle(fontSize: 15,color: Colors.white))
          ]
        )
      )
    );
  }
}