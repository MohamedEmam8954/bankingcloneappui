import 'package:bankingcloneappui/components/Convert_Euro.dart';
import 'package:bankingcloneappui/components/add_Cards.dart';
import 'package:bankingcloneappui/views/Page_card_screen.dart';
import 'package:flutter/material.dart';

class Accounts extends StatelessWidget {
  const Accounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        width: double.infinity,
        height: 553,
        child: ListView(
          children: [
            Text(
              "  Accounts",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                  width: double.infinity,
                  height: 190,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 10,
                          spreadRadius: 10,
                        )
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffd1e4ff),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.credit_card,
                                color: Color(0xff004ccd),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "1257-021-12345-21",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey[500],
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 110,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xff004ccd),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffd1e4ff),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.euro,
                                color: Color(0xff004ccd),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "18 199.24 Eur",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xffd1e4ff),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Icon(
                                Icons.currency_pound,
                                color: Color(0xff004ccd),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "36.97 Gpb",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Add_cards(),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              child: convert_euro(),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Page_card();
                  },
                ));
              },
            ),
            SizedBox(
              height: 30,
            ),
            convert_euro(),
            SizedBox(
              height: 30,
            ),
            convert_euro(),
            SizedBox(
              height: 30,
            ),
            convert_euro(),
            SizedBox(
              height: 30,
            ),
            convert_euro(),
          ],
        ));
  }
}
