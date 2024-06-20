
import 'package:flutter/material.dart';


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    // Start at the top-left corner of the widget
    path.lineTo(0, size.height * 0.65);

    // Define the first quadratic Bézier curve
    var point1 = Offset(size.width * 0.04, size.height * 0.71);
    var point2 = Offset(size.width * 0.2, size.height * 0.65);
    path.quadraticBezierTo(point1.dx, point1.dy, point2.dx, point2.dy);

    // Define the second quadratic Bézier curve
    var point3 = Offset(size.width * 0.5, size.height * 0.50);
    var point4 = Offset(size.width * 0.78, size.height * 0.63);
    path.quadraticBezierTo(point3.dx, point3.dy, point4.dx, point4.dy);

    // Define the third quadratic Bézier curve
    var point5 = Offset(size.width * 1.05, size.height * 0.75);
    var point6 = Offset(size.width, size.height * 0.50);
    path.quadraticBezierTo(point5.dx, point5.dy, point6.dx, point6.dy);

    // Draw a line to the top-right corner of the widget
    path.lineTo(size.width, 0);

    // Close the path to form a closed shape
    path.close();
    return path;
  }


  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}