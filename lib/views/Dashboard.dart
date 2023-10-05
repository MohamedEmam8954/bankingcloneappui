import 'package:bankingcloneappui/components/accounts.dart';

import 'package:bankingcloneappui/components/addmoney&&echange.dart';
import 'package:bankingcloneappui/components/list_view_price.dart';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff004ccd),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600'),
            ),
            onPressed: () {},
          ),
          actions: const [
            Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: 90, child: List_view_price()),
            SizedBox(
              height: 20,
            ),
            Pay(),
            SizedBox(
              height: 20,
            ),
            Accounts(),
          ],
        ));
  }
}
