import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/arise_card.dart';
import '../../../player/providers/hunter_provider.dart';

class XPCard extends ConsumerWidget {
  const XPCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hunter = ref.watch(hunterProvider);

    return AriseCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Level ${hunter.level}',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
              ),
              const Spacer(),
              Text(
                '${hunter.xp}/${hunter.maxXp} XP',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[400],
                    ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: LinearProgressIndicator(
              value: hunter.xpProgress,
              minHeight: 12,
              backgroundColor: const Color(0xFF2A2F3A),
              valueColor: const AlwaysStoppedAnimation(
                Color(0xFF6C5CE7),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '${(hunter.xpProgress * 100).toInt()}% Progress',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Colors.grey[400],
                ),
          ),
          const SizedBox(height: 20),
          Text(
            'HP',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: LinearProgressIndicator(
              value: hunter.hpProgress,
              minHeight: 10,
              backgroundColor: const Color(0xFF2A2F3A),
              valueColor: const AlwaysStoppedAnimation(
                Color(0xFFEF4444),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            'MP',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: LinearProgressIndicator(
              value: hunter.mpProgress,
              minHeight: 10,
              backgroundColor: const Color(0xFF2A2F3A),
              valueColor: const AlwaysStoppedAnimation(
                Color(0xFF3B82F6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}