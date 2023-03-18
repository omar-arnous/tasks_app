import "package:flutter/painting.dart";

enum Importance {
  low,
  medium,
  high,
}

class TaskItem {
  final String id;
  final String name;
  final Importance importance;
  final Color color;
  final DateTime date;
  final bool isComplete;

  TaskItem({
    required this.id,
    required this.name,
    required this.importance,
    required this.color,
    required this.date,
    this.isComplete = false,
  });

  TaskItem copyWith({
    String? id,
    String? name,
    Importance? importance,
    Color? color,
    DateTime? date,
    bool? isComplete,
  }) {
    return TaskItem(
      id: id ?? this.id,
      name: name ?? this.name,
      importance: importance ?? this.importance,
      color: color ?? this.color,
      date: date ?? this.date,
      isComplete: isComplete ?? this.isComplete,
    );
  }
}
