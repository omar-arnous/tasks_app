import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/models/models.dart';

import 'tasks_theme.dart';
import 'home.dart';

void main() {
  runApp(const Tasks());
}

class Tasks extends StatelessWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = TasksTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Tasks',
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => TasksManager()),
        ],
        child: const Home(),
      ),
    );
  }
}
