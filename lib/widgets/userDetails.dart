import 'package:flutter/material.dart';

import '../assets/data.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              margin:
              const EdgeInsets.only(left: 12, right: 12.0),
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(20.0),
                  left: Radius.circular(20.0),
                ),
                color: Color(0xFF1A45B4),
              ),
              child: const Row(
                children: [
                  Text(
                    "+48414574741",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                    size: 24.0,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 12),
              // decoration: BoxDecoration(),
              child: const Text(
                "Hello Carter",
                style: TextStyle(
                    fontSize: 20.0, color: Colors.white),
              ),
            ),
          ],
        ),
        Container(
          height: 60.0,
          width: 60.0,
          margin: const EdgeInsets.only(right: 12.0),
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  profilePicture,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius:
              BorderRadius.all(Radius.circular(40))),
        )
      ],
    );
  }
}
