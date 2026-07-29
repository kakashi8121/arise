import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/arise_card.dart';
import '../../../player/providers/hunter_provider.dart';

class StatsCard extends ConsumerWidget {
  const StatsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hunter = ref.watch(hunterProvider);

    return AriseCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hunter Stats',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 20),
          _StatRow(
            label: 'Strength',
            value: hunter.strength,
            color: const Color(0xFFEF4444),
          ),
          const SizedBox(height: 12),
          _StatRow(
            label: 'Agility',
            value: hunter.agility,
            color: const Color(0xFF10B981),
          ),
          const SizedBox(height: 12),
          _StatRow(
            label: 'Vitality',
            value: hunter.vitality,
            color: const Color(0xFFF59E0B),
          ),
          const SizedBox(height: 12),
          _StatRow(
            label: 'Intelligence',
            value: hunter.intelligence,
            color: const Color(0xFF3B82F6),
          ),
        ],
      ),
    );
  }
}

class _StatRow extends StatelessWidget {
  const _StatRow({
    required this.label,
    required this.value,
    required this.color,
  });

  final String label;
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 12,
          color: color,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Text(
          value.toString(),
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}