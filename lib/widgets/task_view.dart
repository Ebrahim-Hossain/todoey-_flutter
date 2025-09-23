import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_list_tile.dart';
import '../model/task.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key, required this.task});

  final List<Task> task;

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, number) {
        log("$number");
        return Padding(
          padding: EdgeInsetsGeometry.only(bottom: widget.task.length - 1 == number?200: 0),
          child: TaskListTile(
            isCheck: widget.task[number].isDone,
            taskText: widget.task[number].name,
            checkBoxState: (bool? p1) {
              setState(() {
                widget.task[number].changeState();
              });
            },
          ),
        );
      },
      itemCount: widget.task.length,
    );
  }
}
