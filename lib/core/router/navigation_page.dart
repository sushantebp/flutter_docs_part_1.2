import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_app_2/core/helper/theme_extension.dart';
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
            Text(
              'Select to Navigate to respective page.',
              style: context.textTheme.labelLarge,
            ),
            const SizedBox(height: 12),
            RouteButton(
              title: "Painting",
              onPressed: () => context.router.push(PaintingWidetsRoute()),
            ),
            const SizedBox(height: 12),
            RouteButton(title: "Scrolling", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
