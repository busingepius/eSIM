import 'package:datad/widgets/roundedClipper.dart';
import 'package:datad/widgets/simDetails.dart';
import 'package:flutter/material.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                child: SimDetails()
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
    );
  }
}
