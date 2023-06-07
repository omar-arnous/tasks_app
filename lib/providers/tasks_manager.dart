import 'package:flutter/material.dart';
import 'package:tasks/main.dart';
import 'package:tasks/utils/cahce_storage.dart';

import '../models/task_item.dart';

class TasksManager extends ChangeNotifier {
  final _tasksItem = <TaskItem>[];
  bool _mode = CacheStorage.getMode();

  bool get isDark => _mode;
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

  void toggleTheme(context) async {
    _mode = !_mode;
    await CacheStorage.changeMode(_mode);
    notifyListeners();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (ctx) => const Tasks(),
      ),
    );
  }
}
