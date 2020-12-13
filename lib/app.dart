import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/screens/accountScreen.dart';
import 'package:instagram/screens/homeScreen.dart';
import 'package:instagram/screens/searchScreen.dart';
import 'package:instagram/screens/shopScreen.dart';
import 'package:instagram/screens/reelScreen.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: [
        HomeScreen(),
        SearchScreen(),
        ReelScreen(),
        ShopScreen(),
        AccountScreen(),
      ].elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 22,
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
            icon: FaIcon(FontAwesomeIcons.home)
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: FaIcon(FontAwesomeIcons.search)
          ),
          BottomNavigationBarItem(
            label: "Video",
            icon: FaIcon(FontAwesomeIcons.video)
          ),
          BottomNavigationBarItem(
            label: "Shop",
            icon: FaIcon(FontAwesomeIcons.shoppingBag)
          ),
          BottomNavigationBarItem(
            label: "Account",
            icon: FaIcon(FontAwesomeIcons.userCircle)
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