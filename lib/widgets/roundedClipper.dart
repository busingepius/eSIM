// best so far

import 'package:flutter/material.dart';

class BottomRoundedCornersClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    const double radius = 100.0; // Corner radius
    const double curveHeight = 50.0; // Height of the inward curve

    path.moveTo(0, 0);

    // Line down the left side
    path.lineTo(0, size.height - radius);

    // Bottom left curve
    path.quadraticBezierTo(0, size.height, radius, size.height);

    // Create the curve at the start of the line to the bottom middle
    double startX = radius + 20;
    path.quadraticBezierTo(radius + 10, size.height, startX, size.height);

    // Line to bottom middle before the inward curve
    path.lineTo(size.width / 2 - curveHeight - 20, size.height);

    // problem here therefore change it to act like
    // Create the curve at the start of the inward curve
    double controlX1 = size.width / 2 - curveHeight ;
    double controlY1 = size.height - 6;
    path.quadraticBezierTo(controlX1, controlY1, size.width / 2 - curveHeight+1, size.height - 10);

    // Bottom middle inward curve
    double controlX2 = size.width / 2;
    double controlY2 = size.height - 2 * curveHeight;
    double endX = size.width / 2 + curveHeight;
    double endY = size.height - 10;
    path.quadraticBezierTo(controlX2, controlY2, endX, endY);

    // Final part of the inward curve to smooth the transition to the line
    path.quadraticBezierTo(endX + 10, size.height, size.width / 2 + curveHeight + 20, size.height);

    // Line to the right side after the inward curve
    path.lineTo(size.width - radius, size.height);

    // Bottom right curve
    path.quadraticBezierTo(size.width, size.height, size.width, size.height - radius);

    // Line up the right side
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
