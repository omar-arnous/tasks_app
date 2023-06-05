import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/models/models.dart';
import 'package:tasks/utils/cahce_storage.dart';

import 'tasks_theme.dart';
import 'home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheStorage.init();
  runApp(const Tasks());
}

class Tasks extends StatelessWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = CacheStorage.getMode();
    print(isDark);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isDark ? TasksTheme.dark() : TasksTheme.light(),
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
