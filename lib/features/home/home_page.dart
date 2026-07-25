import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ARISE'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.auto_awesome,
              size: 80,
            ),
            Gap(20),
            Text(
              'Welcome to ARISE',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(8),
            Text(
              'Sprint 1 • Module 1 Complete',
            ),
          ],
        ),
      ),
    );
  }
}