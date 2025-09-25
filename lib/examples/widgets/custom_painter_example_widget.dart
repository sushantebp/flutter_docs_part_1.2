import 'package:flutter/material.dart';
import 'dart:math';

class CustomPaintExampleWidget extends StatelessWidget {
  const CustomPaintExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: MyPaint(), size: const Size(200, 200));
  }
}

class MyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    final path = Path();

    // Center of the canvas
    double cx = size.width / 2;
    double cy = size.height / 2;

    // Radius for outer and inner points of star
    double outerRadius = size.width / 2;
    double innerRadius = outerRadius / 2.5;

    // Number of points of the star
    int points = 5;

    // Angle between points
    double angle = (2 * pi) / points;

    // Start at the top point of the star
    path.moveTo(cx, cy - outerRadius);

    for (int i = 1; i <= points * 2; i++) {
      double r = i.isOdd ? innerRadius : outerRadius;
      double x = cx + r * sin(i * angle / 2);
      double y = cy - r * cos(i * angle / 2);
      path.lineTo(x, y);
    }

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
