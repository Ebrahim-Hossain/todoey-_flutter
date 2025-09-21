import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_list_tile.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key,});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 30),
      children: [
        TaskListTile(),
        TaskListTile(),
        TaskListTile(),
      ],
    );
  }
}