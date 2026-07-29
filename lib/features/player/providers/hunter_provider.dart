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
            id: 'player_001',
            name: 'Shadow Monarch',
            level: 1,
            rank: HunterRank.e,
            xp: 120,
            maxXp: 500,
            hp: 100,
            maxHp: 100,
            mp: 50,
            maxMp: 50,
            strength: 10,
            agility: 10,
            vitality: 10,
            intelligence: 10,
          ),
        );

  void gainXp(int amount) {
    final newXp = state.xp + amount;

    if (newXp >= state.maxXp) {
      state = state.copyWith(
        level: state.level + 1,
        xp: newXp - state.maxXp,
        maxXp: state.maxXp + 200,
      );
    } else {
      state = state.copyWith(
        xp: newXp,
      );
    }
  }

  void takeDamage(int amount) {
    state = state.copyWith(
      hp: (state.hp - amount).clamp(0, state.maxHp),
    );
  }

  void restoreHp() {
    state = state.copyWith(
      hp: state.maxHp,
    );
  }
}