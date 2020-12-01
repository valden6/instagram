import 'package:flutter/material.dart';
import 'package:instagram/screens/accountScreen.dart';
import 'package:instagram/screens/homeScreen.dart';
import 'package:instagram/screens/searchScreen.dart';
import 'package:instagram/screens/shopScreen.dart';
import 'package:instagram/screens/videoScreen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomeScreen(),
        SearchScreen(),
        VideoScreen(),
        ShopScreen(),
        AccountScreen(),
      ].elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black,
        fixedColor: Colors.white, 
        unselectedItemColor: Colors.white,
        onTap: _onBarItemTap,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: "Home",
            backgroundColor: Colors.black,
            icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search)
          ),
          BottomNavigationBarItem(
            label: "Video",
            icon: Icon(Icons.video_collection)
          ),
          BottomNavigationBarItem(
            label: "Shop",
            icon: Icon(Icons.shopping_bag)
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: Icon(Icons.account_circle)
          )
        ]
      )
    );
  }

  void _onBarItemTap(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

}