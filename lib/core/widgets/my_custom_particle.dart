import 'package:flutter/material.dart';

// a particle is needed with its property
class Particle {
  Offset position;
  Offset velocity;
  Color color;
  double size;
  Particle({
    required this.position,
    required this.velocity,
    required this.color,
    required this.size,
  });
}

// ConfettiPainter containing list of particles
class ConfettiPainter extends CustomPainter {
  final List<Particle> particles;
  ConfettiPainter({required this.particles});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;
    for (var p in particles) {
      paint.color = p.color;
      canvas.drawCircle(p.position, 5.8, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
