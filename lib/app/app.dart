import 'package:flutter/material.dart';

import 'theme/app_theme.dart';

class AriseApp extends StatelessWidget {
  const AriseApp({super.key});

  static void start() {
    runApp(const AriseApp());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ARISE',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "ARISE",
          style: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}