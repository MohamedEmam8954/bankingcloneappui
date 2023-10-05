import 'package:bankingcloneappui/components/list_ofprices.dart';

import 'package:bankingcloneappui/model/catgory_price_model.dart';

import 'package:flutter/material.dart';

class List_view_price extends StatelessWidget {
  const List_view_price({super.key});
  final List<catgory_price> info = const [
    catgory_price(
        price: "18 199.24", text: "USED_doller", icon: Icons.attach_money),
    catgory_price(price: "18 199.24", text: "Used_Euro", icon: Icons.euro),
    catgory_price(
        price: "20 199.24", text: "USED_doller", icon: Icons.attach_money),
    catgory_price(price: "18 199.24", text: "Used_Euro", icon: Icons.euro),
    catgory_price(
        price: "17 199.24", text: "USED_doller", icon: Icons.attach_money),
    catgory_price(price: "18 199.24", text: "Used_Euro", icon: Icons.euro),
    catgory_price(
        price: "12 199.24", text: "USED_doller", icon: Icons.attach_money),
    catgory_price(price: "65 199.24", text: "Used_Euro", icon: Icons.euro),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: info.length,
        itemBuilder: (context, index) {
          return List_price(catgory: info[index]);
        });
  }
}
