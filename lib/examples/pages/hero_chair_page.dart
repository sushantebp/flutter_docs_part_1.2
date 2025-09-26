import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learn_app_2/core/constants/app_constants.dart';
import 'package:learn_app_2/core/helper/screen_size_extension.dart';

// Hero widget is cool widget to use for transition from one page to another
@RoutePage()
class HeroChairPage extends StatelessWidget {
  const HeroChairPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Usecase of Hero Widget")),
      body: SafeArea(
        child: Center(
          child: Hero(
            tag: "Chair",
            child: Image.asset(
              AppImages.chair,
              width: context.screenWidth,
              height: context.screenHeight / 2,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
