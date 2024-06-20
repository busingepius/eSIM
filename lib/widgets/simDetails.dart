import 'package:flutter/material.dart';

class SimDetails extends StatelessWidget {
  const SimDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Chip(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                labelPadding: const EdgeInsets.symmetric(vertical: -5),
                color: MaterialStateProperty.all<Color>(
                  const Color(0xFFC3FB42),
                ),
                label: const Text(
                  "In Use",
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              const SizedBox(width: 2.0),
              Chip(
                color: MaterialStateProperty.all<Color>(
                  const Color(0xFF1A45B4),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8),
                labelPadding: const EdgeInsets.symmetric(vertical: -5),
                label: const Text(
                  "Internet",
                  style: TextStyle(color: Colors.white),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
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
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
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
    );
  }
}
