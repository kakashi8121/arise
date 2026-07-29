import 'package:flutter/material.dart';

import '../widgets/hunter_card.dart';
import '../widgets/stats_card.dart';
import '../widgets/xp_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ARISE'),
        centerTitle: true,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              HunterCard(),
              SizedBox(height: 20),
              XPCard(),
              SizedBox(height: 20),
              StatsCard(),
            ],
          ),
        ),
      ),
    );
  }
}