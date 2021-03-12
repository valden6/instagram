import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class YourQrCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/emoji-qrcode.jpg"))
              ),
            ),
            Positioned(
              bottom: 50,
              right: MediaQuery.of(context).size.width/2 - 70,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  child: Row(
                    children: [
                      FaIcon(FontAwesomeIcons.camera,color: Colors.black),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                      Text("Scan QR code",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 17))
                    ]
                  )
                ),
              )
            ),
            Positioned(
              width: MediaQuery.of(context).size.width,
              top: 60,
              left: 10,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: FaIcon(FontAwesomeIcons.times,color: Colors.black, size: 35),
                      )
                    )
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Text("EMOJI",style: TextStyle(color: Colors.black,fontSize: 15)),
                      ),
                    )
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      alignment: Alignment.centerRight,
                      child: FaIcon(FontAwesomeIcons.externalLinkAlt)
                    )
                  )
                ]
              )
            )
          ]
        )
      )
    );
  }
}