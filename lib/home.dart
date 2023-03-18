import 'package:flutter/material.dart';

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
      ),
      body: const TaskScreen(),
    );
  }
}
