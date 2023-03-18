import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/screens/tasks_list_screen.dart';

import '../models/models.dart';
import 'empty_tasks_screen.dart';
import 'task_item_screen.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          final manager = Provider.of<TasksManager>(context, listen: false);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskItemScreen(
                onCreate: (item) {
                  manager.addItem(item);
                  Navigator.pop(context);
                },
                onUpdate: (item) {},
              ),
            ),
          );
        },
      ),
      body: buildTasksScreen(),
    );
  }
}

Widget buildTasksScreen() {
  return Consumer<TasksManager>(
    builder: (context, manager, child) {
      if (manager.tasksItems.isNotEmpty) {
        return TasksListScreen(manager: manager);
      } else {
        return const EmptyTasksScreen();
      }
    },
  );
}
