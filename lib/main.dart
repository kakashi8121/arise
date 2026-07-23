import 'package:flutter/material.dart';

void main() {
  runApp(const AriseApp());
}

class AriseApp extends StatelessWidget {
  const AriseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ARISE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF6C5CE7),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: Center(
          child: Text(
            'ARISE',
            style: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}