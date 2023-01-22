// ignore_for_file: prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:netflix/Screens/dashboard.dart';

import '../Screens/Games.dart';
import '../Screens/News.dart';

// import '../dashboard.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  Color svgColor = Color(0xffC5CEE0);
  Color svgColor1 = Color(0xffC5CEE0);
  Color svgColor2 = Color(0xffC5CEE0);
  Color svgColor3 = Color(0xffC5CEE0);
  Color svgColor4 = Color(0xffC5CEE0);
  int CurrentIndex = 0;
  final Screens = [
    Dashboard(),
    Games(),
    News(),
    // Receive(),
    // Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          // showSelectedLabels: Colors.black,
          selectedItemColor: Colors.white,
          // unselectedItemColor: Colors,
          currentIndex: CurrentIndex,
          onTap: (index) => setState(() => CurrentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.gamepad_outlined),
              label: "Game",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.play_arrow_outlined,
              ),
              label: "New & Hot",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.face_outlined,
              ),
              label: "Fast Laugh",
            ),
          ]),
    );
  }
}
