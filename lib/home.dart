import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks/models/models.dart';

import 'screens/task_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Tasks',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.only(right: 10),
        //     child: IconButton(
        //       icon: manager.isDark
        //           ? const Icon(
        //               Icons.light_mode_outlined,
        //             )
        //           : const Icon(
        //               Icons.dark_mode_outlined,
        //             ),
        //       onPressed: () => manager.changeThemeMode(),
        //     ),
        //   ),
        // ],
      ),
      body: const TaskScreen(),
    );
  }
}
