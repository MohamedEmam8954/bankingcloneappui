import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bankingcloneappui/views/Dashboard.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  int pageindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: gettaps(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff034dcd),
        child: Icon(
          Icons.credit_card,
          size: 25,
        ),
        onPressed: () {
          setState(() {
            pageindex = 4;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: get_body(),
    );
  }

  Widget get_body() {
    return IndexedStack(
      index: pageindex,
      children: [
        Dashboard(),
        Center(
            child: Text(
          "comment",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        Center(
            child: Text(
          "Notification",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        Center(
            child: Text(
          "user account",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
        Center(
            child: Text(
          "credit card",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Widget gettaps() {
    List<IconData> ico = [
      Icons.grid_view,
      Icons.comment,
      Icons.notifications,
      Icons.account_circle,
    ];
    return AnimatedBottomNavigationBar(
      gapLocation: GapLocation.center,
      activeColor: Color(0xff034dcd),
      splashColor: Color(0xff034dcd),
      inactiveColor: Colors.black.withOpacity(0.4),
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 10,
      rightCornerRadius: 10,
      icons: ico,
      activeIndex: pageindex,
      onTap: (index) {
        setState(() {
          pageindex = index;
        });
      },
    );
  }
}
