import 'package:flutter/material.dart';

class EmptyTasksScreen extends StatelessWidget {
  const EmptyTasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset('assets/empty_list.png'),
            ),
          ),
          const Text(
            'No Tasks',
            style: TextStyle(fontSize: 21.0),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'Looking for tasks?\n' 'Tap the + button to write them down!',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
