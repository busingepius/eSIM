import 'dart:ui';

import 'package:datad/assets/data.dart';
import 'package:datad/widgets/roundedClipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'widgets/bottomNavigationBar.dart';
import 'widgets/dataDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                                color: Colors.blueAccent,
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
                                  "${profile_picture}",
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                        )
                      ],
                    ),
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
                        color: Colors.blueAccent,
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
                    Container(
                      height: 280.0,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Container(
                            height: 250.0,
                            width: double.infinity,
                            margin: const EdgeInsets.only(bottom: 20.0),
                            child: ClipPath(
                              clipper: BottomRoundedCornersClipper(),
                              child: Container(
                                margin: const EdgeInsets.only(
                                  top: 15.0,
                                  left: 12.0,
                                  right: 12.0,
                                ),
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(70),
                                    topRight: Radius.circular(70.0),
                                    bottomLeft: Radius.circular(70),
                                    bottomRight: Radius.circular(70.0),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 25.0,
                                      left: 25.0,
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.swap_vertical_circle_sharp,
                                            size: 60.0,
                                          ),
                                          RichText(
                                            text: const TextSpan(
                                              text: "Data 5 GB\n",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 20.0,
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: "Weekly Plan",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.blueGrey,
                                                    fontSize: 15.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 100.0,
                                      left: 25.0,
                                      child: RichText(
                                        text: const TextSpan(
                                          text: "Active Until\n",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blueGrey,
                                            fontSize: 15.0,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "July, 2024",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 150.0,
                                      left: 25.0,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Chip(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            labelPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: -5),
                                            color:
                                                MaterialStateProperty.all<Color>(
                                                    Colors.lightGreen),
                                            label: const Text(
                                              "In Use",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                          ),
                                          const SizedBox(width: 2.0),
                                          Chip(
                                            color:
                                                MaterialStateProperty.all<Color>(
                                                    Colors.blue),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8),
                                            labelPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: -5),
                                            label: const Text(
                                              "Internet",
                                              style:
                                                  TextStyle(color: Colors.white),
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: 80.0,
                                      right: 25.0,
                                      child: SizedBox(
                                        height: 120.0,
                                        width: 120.0,
                                        child: CircularProgressIndicator(
                                          value: 0.45,
                                          strokeWidth: 7,
                                          backgroundColor: Colors.grey[200],
                                          valueColor:
                                              const AlwaysStoppedAnimation<Color>(
                                                  Colors.blue),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 120.0,
                                      right: 47.0,
                                      child: RichText(
                                        text: const TextSpan(
                                          text: "4.5 GB\n",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "of 10 GB",
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Transform.rotate(
                              angle: 40,
                              child: const Icon(
                                Icons.arrow_circle_left,
                                size: 70.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                        color: Colors.greenAccent,
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
                ),
              ),
            ),
            const Positioned(
              bottom: 10.0,
              left: 0.0,
              right: 0.0,
              child: CustomBottomNavBar(),
            ),
          ],
        ),
      ),
      // bottomNavigationBar:  CustomBottomNavBar(),
    );
  }
}
