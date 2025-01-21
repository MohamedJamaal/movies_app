import 'package:flutter/material.dart';
import 'package:movies_app/core/configs/theme/app_theme.dart';
import 'package:movies_app/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.appTheme,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
