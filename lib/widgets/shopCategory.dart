import 'package:flutter/material.dart';

class ShopCategory extends StatefulWidget {
  @override
  _ShopCategoryState createState() => _ShopCategoryState();
}

class _ShopCategoryState extends State<ShopCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: ListView.builder(
        itemCount: 5,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 180,
            padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
            child: Container( 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                )
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("assets/shop-category.jpg"),
                          fit: BoxFit.fill
                        )
                      )
                    )
                  ),
                  Padding(padding: EdgeInsets.only(left:8)),
                  Expanded(
                    child: Container(
                      child: Text("Shop Collections", style: TextStyle(color: Colors.white,fontSize: 14, fontWeight: FontWeight.bold))
                    ),
                  )
                ]
              )
            )
          );
        }
      )
    );
  }
}