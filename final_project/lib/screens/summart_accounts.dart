import 'package:final_project/common/account_card.dart';
import 'package:flutter/material.dart';

class summaryaccount extends StatefulWidget {
  const summaryaccount({super.key});

  @override
  State<summaryaccount> createState() => _summaryaccount();
}

class _summaryaccount extends State<summaryaccount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      // color: Color.fromARGB(255, 87, 224, 68),
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text('Current Accounts')),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                AccountCard(),
                AccountCard(),
                AccountCard(),
                AccountCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
