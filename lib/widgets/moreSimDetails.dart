import 'package:flutter/material.dart';

class MoreSimDetails extends StatelessWidget {
  const MoreSimDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100.0,
      padding: const EdgeInsets.all(5.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            15.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(
                Icons.swap_vertical_circle_sharp,
                size: 40.0,
              ),
              RichText(
                text: const TextSpan(
                  text: "Call\n",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "Weekly",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: RichText(
              text: const TextSpan(
                text: "60 Min / Day",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "Weekly",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
            width: 170.0,
            child: LinearProgressIndicator(
              value: 0.45,
              backgroundColor: Colors.grey[200],
              valueColor: const AlwaysStoppedAnimation<Color>(
                Colors.black,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(
                  5.0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                RichText(
                  text: const TextSpan(
                    text: "04 / ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9.0,
                    ),
                    children: [
                      TextSpan(
                        text: "100 Days",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 9.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20.0),
                RichText(
                  text: const TextSpan(
                    text: "30 / ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9.0,
                    ),
                    children: [
                      TextSpan(
                        text: "120 Min",
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 9.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
