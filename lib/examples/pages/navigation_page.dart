import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:learn_app_2/core/helper/theme_extension.dart';

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
          ],
        ),
      ),
    );
  }
}
