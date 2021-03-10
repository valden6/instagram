import 'package:flutter/material.dart';

class ShopContent extends StatefulWidget {
  @override
  _ShopContentState createState() => _ShopContentState();
}

class _ShopContentState extends State<ShopContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {

            String shopPp = (index % 3 == 0) ? "assets/shop-logo-1.jpg" : "assets/shop-logo-2.jpg";
            String shopName = (index % 3 == 0) ? "Z8.official" : "Reyas.shop";
            String shopPic = (index % 3 == 0) ? "assets/shop-merch-1.jpg" : "assets/shop-merch-2.jpg";
            String shopDesc = (index % 3 == 0) ? "Shirt home 2020" : "Shirt Summer Collection";
                
            return Container(
              margin: EdgeInsets.all(4),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(shopPic),
                                fit: BoxFit.fill
                              )
                            )
                          )
                        ),
                        Positioned(
                          left: 0,
                          top: 10,
                          height: 35,
                          width: 183,
                          child: Container(
                            margin: EdgeInsets.only(left:6, right: 6),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                        image: AssetImage(shopPp),
                                        fit: BoxFit.fill
                                      )
                                    )
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(right: 8)),
                                Expanded(
                                  flex: 8,
                                  child: Text(shopName, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))
                                )
                              ]
                            )
                          )
                        )
                      ]    
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Text(shopDesc, textAlign: TextAlign.start ,style: TextStyle(color: Colors.white)),
                    ))
                ],
              )
            );
          }
        )
      ),
    );
  }
}