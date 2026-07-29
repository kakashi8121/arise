import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../widgets/daily_quest_card.dart';
import '../widgets/hunter_card.dart';
import '../widgets/quick_actions_card.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const HunterCard()
                  .animate()
                  .fadeIn(duration: 400.ms)
                  .slideY(begin: .1),
              const SizedBox(height: 20),
              const XPCard()
                  .animate()
                  .fadeIn(delay: 100.ms, duration: 400.ms)
                  .slideY(begin: .1),
              const SizedBox(height: 20),
              const StatsCard()
                  .animate()
                  .fadeIn(delay: 200.ms, duration: 400.ms)
                  .slideY(begin: .1),
              const SizedBox(height: 20),
              const DailyQuestCard()
                  .animate()
                  .fadeIn(delay: 300.ms, duration: 400.ms)
                  .slideY(begin: .1),
              const SizedBox(height: 20),
              const QuickActionsCard()
                  .animate()
                  .fadeIn(delay: 400.ms, duration: 400.ms)
                  .slideY(begin: .1),
            ],
          ),
        ),
      ),
    );
  }
}