import 'package:flutter/material.dart';
import 'package:learn_app_2/core/constants/app_constants.dart';

class ClipWidget extends StatelessWidget {
  const ClipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // use-case of clipoval : child to oval,circle
    // clipRect : child to rectanlge,clipRReact : child to Rounded Rectangle
    // clipRRect : child to rounded rectangle
    return ClipOval(
      child: FadeInImage.assetNetwork(
        placeholder: AppConstants.placeHolder,
        image:
            "https://images.unsplash.com/photo-1628839150503-347ca9d761ea?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        fit: BoxFit.cover,
        height: 200,
        width: 200,
      ),
    );
  }
}
