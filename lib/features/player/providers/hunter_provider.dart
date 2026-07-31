import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/hunter.dart';

final hunterProvider =
    StateNotifierProvider<HunterNotifier, Hunter>((ref) {
  return HunterNotifier();
});

class HunterNotifier extends StateNotifier<Hunter> {
  HunterNotifier()
      : super(
          const Hunter(
            name: 'Kakashi',
            rank: HunterRank.e,
            level: 1,
            xp: 0,
            maxXp: 100,
            gold: 500,
            hp: 100,
            maxHp: 100,
            mp: 60,
            maxMp: 60,
            strength: 10,
            agility: 10,
            vitality: 10,
            intelligence: 10,
          ),
        );

  void gainXp(int amount) {
    var hunter = state;
    var newXp = hunter.xp + amount;
    var newLevel = hunter.level;
    var newMaxXp = hunter.maxXp;

    while (newXp >= newMaxXp) {
      newXp -= newMaxXp;
      newLevel += 1;
      newMaxXp = (newMaxXp * 1.2).round();
    }

    state = hunter.copyWith(
      level: newLevel,
      xp: newXp,
      maxXp: newMaxXp,
    );
  }

  void addGold(int amount) {
    state = state.copyWith(
      gold: state.gold + amount,
    );
  }

  void spendGold(int amount) {
    if (state.gold < amount) return;

    state = state.copyWith(
      gold: state.gold - amount,
    );
  }
}
