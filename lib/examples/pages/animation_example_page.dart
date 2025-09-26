import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_app_2/core/constants/app_constants.dart';
import 'package:learn_app_2/core/helper/screen_size_extension.dart';
import 'package:learn_app_2/core/widgets/my_custom_particle.dart';

@RoutePage()
class AnimationExamplePage extends StatefulWidget {
  const AnimationExamplePage({super.key});

  @override
  State<AnimationExamplePage> createState() => _AnimationExamplePageState();
}

class _AnimationExamplePageState extends State<AnimationExamplePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;
  final List<Particle> _particles = [];

  final random = Random();
  bool _isClicked = false;

  void _toggleAnimation() {
    setState(() {
      _isClicked = !_isClicked;
    });
    if (_isClicked) {
      setState(() {
        _animationController.repeat();
      });
    } else {
      setState(() {
        _animationController.stop();
      });
    }
  }

  void _generateParticles() {
    for (var i = 0; i < 100; ++i) {
      // particles are generated with their respective properties
      _particles.add(
        Particle(
          position: Offset(
            random.nextDouble() * 400,
            random.nextDouble() * 600,
          ),
          velocity: Offset(
            (random.nextDouble() - 0.5) * 2,
            random.nextDouble() * 3 + 1,
          ),
          color: Colors.primaries[random.nextInt(Colors.primaries.length)],
          size: random.nextDouble() * 10 + 5,
        ),
      );
    }
  }

  void _updateParticles() {
    setState(() {
      for (var p in _particles) {
        p.position += p.velocity;
        // Reset particle if off-screen
        if (p.position.dy > context.screenHeight) {
          p.position = Offset(random.nextDouble() * 400, 0);
        }
        if (p.position.dx > context.screenWidth || p.position.dx < 0) {
          p.velocity = Offset(-p.velocity.dx, p.velocity.dy);
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();

    // number of particles are generated with its respective properties
    // position,size,color,velocity
    _generateParticles();

    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..addListener(() {
            // position of particles are update with respective to their properties
            _updateParticles();
          })
          ..repeat();

    // colors animation for FAB's background color
    _colorAnimation = ColorTween(
      begin: Colors.purpleAccent,
      end: Colors.black,
    ).animate(_animationController);

    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Theme Example"), centerTitle: true),
      body: Center(
        child: CustomPaint(
          size: const Size(double.infinity, double.infinity),
          painter: ConfettiPainter(particles: _particles),
        ),
      ),
      floatingActionButton: AnimatedBuilder(
        animation: _colorAnimation,
        builder: (context, child) => FloatingActionButton(
          backgroundColor: _colorAnimation.value,
          shape: const CircleBorder(),
          onPressed: _toggleAnimation,
          child: child,
        ),
        child: Center(
          child: Image.asset(AppImages.ballonIcon, fit: BoxFit.cover),
        ),
      ),
    );
  }
}
