import 'package:flutter/material.dart';
import 'package:learn_app_2/core/router/app_router.dart';
import 'package:learn_app_2/core/theme/app_theme.dart';

void main() => runApp(LearnApp());

class LearnApp extends StatelessWidget {
  LearnApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: _appRouter.config(),
    );
  }
}
