import 'package:bankingcloneappui/model/Operations.dart';
import 'package:flutter/material.dart';

class Opertaions extends StatelessWidget {
  const Opertaions({super.key, required this.operation_model});
  final Operation_model operation_model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
        width: double.infinity,
        height: 75,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2.5,
            blurRadius: 5,
          )
        ]),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xffcee0fa),
              ),
              child: Icon(
                operation_model.icon,
                color: Color(0xff004ccd),
                size: 30,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Text(
              operation_model.text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
