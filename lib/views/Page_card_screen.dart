import 'package:bankingcloneappui/components/operations.dart';
import 'package:bankingcloneappui/components/page_viewcrditcard.dart';
import 'package:bankingcloneappui/model/Operations.dart';

import 'package:flutter/material.dart';

class Page_card extends StatelessWidget {
  Page_card({super.key});
  final List<Operation_model> data = const [
    Operation_model(icon: Icons.credit_card, text: "Top Up Card"),
    Operation_model(icon: Icons.wallet, text: "Payments"),
    Operation_model(icon: Icons.arrow_forward, text: "Card out"),
    Operation_model(
        icon: Icons.credit_card, text: "Take all money from the card"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          centerTitle: true,
          title: Text(
            "Card",
            style: TextStyle(fontSize: 24, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 24,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 24,
                ))
          ],
        ),
        preferredSize: Size.fromHeight(60),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 300,
            child: page_view_crditcard(),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: double.infinity,
            height: 70,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 10,
              ),
            ]),
            child: Row(
              children: [
                Container(
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(color: Color(0xff004ccd), width: 3.5),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "operation",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff004ccd),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "Exchange",
                      style: TextStyle(
                          fontSize: 25,
                          color: Color(0xff004ccd),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Opertaions(operation_model: data[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
