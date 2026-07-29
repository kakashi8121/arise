enum HunterRank {
  e,
  d,
  c,
  b,
  a,
  s,
  national,
}

class Hunter {
  const Hunter({
    required this.id,
    required this.name,
    required this.level,
    required this.rank,
    required this.xp,
    required this.maxXp,
    required this.hp,
    required this.maxHp,
    required this.mp,
    required this.maxMp,
    required this.strength,
    required this.agility,
    required this.vitality,
    required this.intelligence,
  });

  final String id;
  final String name;

  final int level;
  final HunterRank rank;

  final int xp;
  final int maxXp;

  final int hp;
  final int maxHp;

  final int mp;
  final int maxMp;

  final int strength;
  final int agility;
  final int vitality;
  final int intelligence;

  double get xpProgress => xp / maxXp;
  double get hpProgress => hp / maxHp;
  double get mpProgress => mp / maxMp;

  String get rankLabel {
    switch (rank) {
      case HunterRank.e:
        return 'E';
      case HunterRank.d:
        return 'D';
      case HunterRank.c:
        return 'C';
      case HunterRank.b:
        return 'B';
      case HunterRank.a:
        return 'A';
      case HunterRank.s:
        return 'S';
      case HunterRank.national:
        return 'National';
    }
  }

  Hunter copyWith({
    String? id,
    String? name,
    int? level,
    HunterRank? rank,
    int? xp,
    int? maxXp,
    int? hp,
    int? maxHp,
    int? mp,
    int? maxMp,
    int? strength,
    int? agility,
    int? vitality,
    int? intelligence,
  }) {
    return Hunter(
      id: id ?? this.id,
      name: name ?? this.name,
      level: level ?? this.level,
      rank: rank ?? this.rank,
      xp: xp ?? this.xp,
      maxXp: maxXp ?? this.maxXp,
      hp: hp ?? this.hp,
      maxHp: maxHp ?? this.maxHp,
      mp: mp ?? this.mp,
      maxMp: maxMp ?? this.maxMp,
      strength: strength ?? this.strength,
      agility: agility ?? this.agility,
      vitality: vitality ?? this.vitality,
      intelligence: intelligence ?? this.intelligence,
    );
  }
}