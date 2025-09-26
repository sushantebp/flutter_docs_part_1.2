import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_app_2/core/constants/app_constants.dart';
import 'package:learn_app_2/core/router/app_router.dart';
import 'package:learn_app_2/core/widgets/route_button.dart';

@RoutePage()
class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Page'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            const Text('Select to Navigate to respective page.'),
            const SizedBox(height: 12),
            RouteButton(
              title: "Painting",
              onPressed: () => context.router.push(const PaintingWidetsRoute()),
            ),
            const SizedBox(height: 12),
            RouteButton(
              title: "Scrolling",
              onPressed: () =>
                  context.router.push(const ScrollingWidgetsRoute()),
            ),
            const SizedBox(height: 12),
            Hero(
              tag: "Chair",
              child: GestureDetector(
                onTap: () => context.router.push(const HeroChairRoute()),
                child: Image.asset(
                  AppImages.chair,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 12),
            RouteButton(
              title: "Animation",
              onPressed: () =>
                  context.router.push(const AnimationExampleRoute()),
            ),
          ],
        ),
      ),
    );
  }
}
