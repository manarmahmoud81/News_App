import 'package:flutter/material.dart';
import 'core/routing/router_generation_config.dart';
import 'core/styling/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      routerConfig: RouterGenerationConfig.goRouter,
    );
  }
}