import 'package:box/HomeScreen/HomeScreen.dart';
import 'package:box/Tasks/To_Do.dart';
import 'package:box/user_details.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Color get whiteColor => Colors.white;
  Color get blackColor => Colors.black87;
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    Todo(),
    UserDetails(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: blackColor),
          Icon(Icons.list_alt, size: 30, color: blackColor),
          Icon(Icons.person, size: 30, color: blackColor),
        ],
        // color: Colors.black,
        buttonBackgroundColor: whiteColor,
        backgroundColor: whiteColor,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
