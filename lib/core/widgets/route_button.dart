import 'package:flutter/material.dart';
import 'package:learn_app_2/core/helper/theme_extension.dart';

class RouteButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const RouteButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(title, style: context.textTheme.titleMedium),
    );
  }
}
