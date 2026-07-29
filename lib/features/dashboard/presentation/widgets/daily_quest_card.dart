import 'package:flutter/material.dart';

import '../../../../core/widgets/arise_card.dart';

class DailyQuestCard extends StatelessWidget {
  const DailyQuestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AriseCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Daily Quests',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 20),
          const _QuestTile(
            title: '100 Push-ups',
            xpReward: 50,
          ),
          const SizedBox(height: 12),
          const _QuestTile(
            title: '100 Sit-ups',
            xpReward: 50,
          ),
          const SizedBox(height: 12),
          const _QuestTile(
            title: '10 km Run',
            xpReward: 100,
          ),
        ],
      ),
    );
  }
}

class _QuestTile extends StatelessWidget {
  const _QuestTile({
    required this.title,
    required this.xpReward,
  });

  final String title;
  final int xpReward;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.check_circle_outline,
          color: Color(0xFF6C5CE7),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Text(
          '+$xpReward XP',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: const Color(0xFF6C5CE7),
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
    );
  }
}