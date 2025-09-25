import 'dart:math' as math;

import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: 100,
    );
    Paint paint = Paint();

    double degreesToRadians(double degrees) => degrees * math.pi / 180;

    canvas.drawArc(
      rect,
      degreesToRadians(120),
      degreesToRadians(180),
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
