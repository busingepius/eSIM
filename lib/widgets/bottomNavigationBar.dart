import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 105),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 50.0,
            spreadRadius: 10.0,
            offset: Offset(2, 5),
          ),
        ],
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => print("home"),
            icon: const Icon(Icons.home),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () => print("home"),
            icon: const Icon(Icons.sim_card_outlined),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
            ),
          ),
          IconButton(
            onPressed: () => print("home"),
            icon: const Icon(Icons.settings),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white)),
          ),
        ],
      ),
    );
  }
}
