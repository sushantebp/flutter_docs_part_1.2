import 'package:flutter/material.dart';

class RouteButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const RouteButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: onPressed, child: Text(title));
  }
}
