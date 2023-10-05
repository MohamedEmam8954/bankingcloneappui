import 'package:bankingcloneappui/views/Home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Card_Listing_Page());
}

class Card_Listing_Page extends StatelessWidget {
  const Card_Listing_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_page(),
    );
  }
}
