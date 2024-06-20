import 'package:flutter/material.dart';

class RecentUsages extends StatelessWidget {
  const RecentUsages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.only(left: 12.0, top: 2.0),
        child: Text(
          "Recent Usages",
          style: TextStyle(
              fontSize: 35.0,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
      Container(
        height: 50.0,
        margin: const EdgeInsets.symmetric(horizontal: 12.0),
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration: const BoxDecoration(
          color: Color(0xFFC3FB42),
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.account_balance_wallet_sharp, size: 30),
            RichText(
              text: const TextSpan(
                text: "Available\n",
                children: [
                  TextSpan(
                    text: "\$450.60",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                  color: Colors.black54,
                  borderRadius:
                  BorderRadius.all(Radius.circular(30.0))),
              child: const Row(
                children: [
                  Icon(Icons.add_circle, color: Colors.white),
                  Text(
                    "Top Up Balance",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],);
  }
}
