import 'package:bankingcloneappui/components/credit_card.dart';
import 'package:bankingcloneappui/model/cards_control.dart';
import 'package:flutter/material.dart';

final List<Cards_controll> info = const [
  Cards_controll(
      icon: Icons.euro,
      price: '18 19.255',
      color: Colors.black,
      numbers: "5078 0348 **** 4937",
      date: "01/30"),
  Cards_controll(
      icon: Icons.euro,
      price: '18 19.255',
      color: Color(0xff0159f4),
      numbers: "5078 0348 **** 4937",
      date: "03/10"),
  Cards_controll(
      icon: Icons.currency_pound,
      price: '19 18.222',
      color: Colors.green,
      numbers: "3468 0348 **** 4937",
      date: "01/15"),
  Cards_controll(
      icon: Icons.euro,
      price: '17 20.255',
      color: Colors.teal,
      numbers: "2020 0348  **** 4937",
      date: "02/30"),
  Cards_controll(
      icon: Icons.currency_pound,
      price: '12 80.255',
      color: Colors.red,
      numbers: "6050 0348 **** 4937",
      date: "03/30"),
  Cards_controll(
      icon: Icons.euro,
      price: '13 20.255',
      color: Colors.orange,
      numbers: "2060 0348 **** 4937",
      date: "02/25"),
];
PageView page_view_crditcard() {
  return PageView.builder(
    itemCount: info.length,
    itemBuilder: (context, index) {
      return Credit_card(cards: info[index]);
    },
  );
}
