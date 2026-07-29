import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/quest.dart';
import '../../providers/quest_provider.dart';

class QuestTile extends ConsumerWidget {
  const QuestTile({
    super.key,
    required this.quest,
  });

  final Quest quest;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Icon(
          quest.completed
              ? Icons.check_circle
              : Icons.radio_button_unchecked,
          color: quest.completed
              ? Colors.green
              : const Color(0xFF6C5CE7),
        ),
        title: Text(
          quest.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration:
                quest.completed ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(quest.description),
        ),
        trailing: quest.completed
            ? const Text(
                'DONE',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              )
            : FilledButton(
                onPressed: () {
                  ref
                      .read(questProvider.notifier)
                      .completeQuest(quest.id);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        '+${quest.xpReward} XP earned!',
                      ),
                    ),
                  );
                },
                child: const Text('Complete'),
              ),
      ),
    );
  }
}