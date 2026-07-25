import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
      () {
        if (!mounted) return;
        context.go('/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff0F172A),
              Color(0xff1E293B),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Text(
          "ARISE",
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 8,
                color: Colors.white,
              ),
        )
            .animate()
            .fadeIn(duration: 1200.ms)
            .scale(begin: const Offset(.7, .7))
            .then()
            .shimmer(duration: 1800.ms),
      ),
    );
  }
}