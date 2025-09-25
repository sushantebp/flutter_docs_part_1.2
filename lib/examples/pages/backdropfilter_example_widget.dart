import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropExampleWidget extends StatelessWidget {
  const BackdropExampleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(color: Colors.blue),
          child: Text(
            'Content Filter',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
