import 'package:flutter/material.dart';

class Add_cards extends StatelessWidget {
  const Add_cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cards",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color(0xffd1e4ff),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Color(0xff0d55c1),
                    ),
                    Text(
                      "ADD CARDS",
                      style: TextStyle(
                          color: Color(0xff0d55c1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
