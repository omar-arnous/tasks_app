import 'package:flutter/material.dart';

import 'task_item.dart';

class TasksManager extends ChangeNotifier {
  final _tasksItem = <TaskItem>[];

  List<TaskItem> get tasksItems => List.unmodifiable(_tasksItem);

  void deleteItem(int index) {
    _tasksItem.removeAt(index);
    notifyListeners();
  }

  void addItem(TaskItem item) {
    _tasksItem.add(item);
    notifyListeners();
  }

  void updateItem(TaskItem item, int index) {
    _tasksItem[index] = item;
    notifyListeners();
  }

  void completeItem(int index, bool change) {
    final item = _tasksItem[index];
    _tasksItem[index] = item.copyWith(isComplete: change);
    notifyListeners();
  }
}
