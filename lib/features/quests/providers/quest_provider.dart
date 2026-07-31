import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../player/providers/hunter_provider.dart';
import '../models/quest.dart';

final questProvider = StateNotifierProvider<QuestNotifier, List<Quest>>((ref) {
  return QuestNotifier(ref);
});

class QuestNotifier extends StateNotifier<List<Quest>> {
  QuestNotifier(this.ref)
      : super(const [
          Quest(
            id: 'daily_001',
            title: '100 Push-ups',
            description: 'Complete 100 push-ups today.',
            type: QuestType.daily,
            xpReward: 50,
            goldReward: 100,
            completed: false,
          ),
          Quest(
            id: 'daily_002',
            title: '100 Sit-ups',
            description: 'Complete 100 sit-ups today.',
            type: QuestType.daily,
            xpReward: 50,
            goldReward: 100,
            completed: false,
          ),
          Quest(
            id: 'daily_003',
            title: '10 km Run',
            description: 'Run a total distance of 10 km.',
            type: QuestType.daily,
            xpReward: 100,
            goldReward: 200,
            completed: false,
          ),
        ]);

  final Ref ref;

  void completeQuest(String questId) {
    final updated = state.map((quest) {
      if (quest.id == questId && !quest.completed) {
        ref.read(hunterProvider.notifier).gainXp(quest.xpReward);
        ref.read(hunterProvider.notifier).addGold(quest.goldReward);
        return quest.copyWith(completed: true);
      }
      return quest;
    }).toList();

    state = updated;
  }

  void resetDailyQuests() {
    state = state.map((quest) {
      if (quest.type == QuestType.daily) {
        return quest.copyWith(completed: false);
      }
      return quest;
    }).toList();
  }

  int get completedDailyQuests =>
      state.where((q) => q.type == QuestType.daily && q.completed).length;

  int get totalDailyQuests =>
      state.where((q) => q.type == QuestType.daily).length;

  int get earnedXpToday => state
      .where((q) => q.type == QuestType.daily && q.completed)
      .fold(0, (sum, q) => sum + q.xpReward);

  double get dailyProgress {
    if (totalDailyQuests == 0) return 0;
    return completedDailyQuests / totalDailyQuests;
  }
}
