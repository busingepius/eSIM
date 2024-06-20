import 'package:flutter/material.dart';

import 'dataDetails.dart';

class PopularPlans extends StatelessWidget {
  const PopularPlans({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Plans",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "View All",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          padding: const EdgeInsets.only(top: 8.0),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFFC3FB42),
            borderRadius: BorderRadius.all(
              Radius.circular(12.0),
            ),
          ),
          // flex: 3,
          child: const Column(
            children: [
              DataDetails(),
              DataDetails(),
              DataDetails(),
              DataDetails(),
              DataDetails(),
            ],
          ),
        ),
      ],
    );
  }
}
