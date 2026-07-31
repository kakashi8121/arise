enum HunterRank {
e,
d,
c,
b,
a,
s,
}

class Hunter {
const Hunter({
required this.name,
required this.rank,
required this.level,
required this.xp,
required this.maxXp,
required this.gold,
required this.hp,
required this.maxHp,
required this.mp,
required this.maxMp,
required this.strength,
required this.agility,
required this.vitality,
required this.intelligence,
});

final String name;
final HunterRank rank;
final int level;
final int xp;
final int maxXp;

/// Gold currency used for equipment, inventory, shop, and future upgrades.
final int gold;

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

Hunter copyWith({
String? name,
HunterRank? rank,
int? level,
int? xp,
int? maxXp,
int? gold,
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
name: name ?? this.name,
rank: rank ?? this.rank,
level: level ?? this.level,
xp: xp ?? this.xp,
maxXp: maxXp ?? this.maxXp,
gold: gold ?? this.gold,
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
