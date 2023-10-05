import 'package:bankingcloneappui/model/cards_control.dart';
import 'package:flutter/material.dart';

class Credit_card extends StatelessWidget {
  const Credit_card({super.key, required this.cards});
  final Cards_controll cards;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(cards.icon),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    cards.price,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: 400,
            height: 190,
            decoration: BoxDecoration(
                color: cards.color, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Icon(
                    Icons.credit_card,
                    color: Colors.white.withOpacity(0.5),
                    size: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 35),
                  child: Text(
                    cards.numbers,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 22, left: 5),
                        child: Text(
                          "VALID DATE",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 15),
                            child: Text(
                              cards.date,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/master_card_logo.png'),
                                    fit: BoxFit.fill)),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
