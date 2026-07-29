enum QuestType {
  daily,
  main,
  side,
}

class Quest {
  const Quest({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.xpReward,
    required this.completed,
  });

  final String id;
  final String title;
  final String description;
  final QuestType type;
  final int xpReward;
  final bool completed;

  Quest copyWith({
    String? id,
    String? title,
    String? description,
    QuestType? type,
    int? xpReward,
    bool? completed,
  }) {
    return Quest(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      type: type ?? this.type,
      xpReward: xpReward ?? this.xpReward,
      completed: completed ?? this.completed,
    );
  }
}