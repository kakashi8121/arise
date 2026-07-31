import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/arise_card.dart';
import '../../../quests/providers/quest_provider.dart';

class DailyProgressCard extends ConsumerWidget {
  const DailyProgressCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questNotifier = ref.read(questProvider.notifier);

    return AriseCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Daily Progress',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Text(
            '${questNotifier.completedDailyQuests}/${questNotifier.totalDailyQuests} quests completed',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: LinearProgressIndicator(
              value: questNotifier.dailyProgress,
              minHeight: 12,
              backgroundColor: const Color(0xFF2A2F3A),
              valueColor: const AlwaysStoppedAnimation(
                Color(0xFF10B981),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            '+${questNotifier.earnedXpToday} XP earned today',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey[400],
                ),
          ),
        ],
      ),
    );
  }
}