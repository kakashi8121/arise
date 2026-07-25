import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (!mounted) return;

      context.go('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF09090B),
              Color(0xFF1E293B),
            ],
          ),
        ),
        child: Center(
          child: Text(
            "ARISE",
            style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 8,
                ),
          )
              .animate()
              .fadeIn(duration: 900.ms)
              .scale(begin: const Offset(.8, .8))
              .then()
              .shimmer(duration: 1400.ms),
        ),
      ),
    );
  }
}