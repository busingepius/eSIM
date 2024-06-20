import 'package:datad/widgets/moreSimDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/customClipper.dart';
import '../widgets/dataDetails.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E67F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: ClipPath(
                      clipper: MyClipper(),
                      child: Container(
                        height: 450,
                        color: Colors.white,
                        child: SafeArea(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: IconButton(
                                        onPressed: () => Navigator.pop(context),
                                        icon: const Icon(
                                          Icons.arrow_circle_down_outlined,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 50, right: 0),
                                      padding: const EdgeInsets.all(5.0),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.horizontal(
                                          right: Radius.circular(20.0),
                                          left: Radius.circular(20.0),
                                        ),
                                        color: Colors.black12,
                                      ),
                                      child: const Row(
                                        children: [
                                          Text(
                                            "+48414574741",
                                            style: TextStyle(
                                                color: Colors.black45),
                                          ),
                                          Icon(
                                            Icons.arrow_drop_down,
                                            color: Colors.black,
                                            size: 15.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(
                                    text: "4.5 GB\n",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 44.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "of 10 GB\n",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "28 Days Left",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0, vertical: 30.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
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
                                      Container(
                                        padding: const EdgeInsets.all(5.0),
                                        decoration: const BoxDecoration(
                                            color: Colors.black54,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(30.0))),
                                        child: const Row(
                                          children: [
                                            Icon(Icons.add_circle,
                                                color: Colors.white),
                                            Text(
                                              "Top Up Balance",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  child: SizedBox(
                    height: 120.0,
                    width: 400.0,
                    child:  ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MoreSimDetails(),
                        MoreSimDetails(),
                        MoreSimDetails(),
                        MoreSimDetails(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 5.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add-on Plan",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "View All",
                        style: TextStyle(color: Colors.white24),
                      ),
                    ],
                  ),
                ),
                DataDetails(),
                DataDetails(),
                DataDetails(),
                DataDetails(),
                DataDetails(),
                DataDetails(),
                DataDetails(),
                DataDetails(),
                DataDetails(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
