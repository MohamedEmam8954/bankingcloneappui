import 'package:bankingcloneappui/model/catgory_price_model.dart';

import 'package:flutter/material.dart';

var ck = 0;

class List_price extends StatelessWidget {
  List_price({super.key, required this.catgory});
  final catgory_price catgory;
  @override
  Widget build(BuildContext context) {
    if (ck == 0)
      ck = 1;
    else
      ck = 0;

    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 84),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                catgory.icon,
                color: Colors.white,
                size: 25,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: ck == 1
                      ? Text(
                          catgory.price,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      : Text(
                          catgory.price,
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white.withOpacity(0.7),
                              fontWeight: FontWeight.bold),
                        ))
            ],
          ),
          Text(
            catgory.text,
            style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
