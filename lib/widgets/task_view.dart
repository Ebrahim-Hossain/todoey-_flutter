import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/main.dart';
import 'package:todoey_flutter/widgets/task_list_tile.dart';

import '../model/task_data.dart';

class TaskView extends StatefulWidget {
  const TaskView({super.key});

  @override
  State<TaskView> createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context,taskData, Widget? child) {
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (context, number) {
            log("$number");
            return Padding(
              padding: EdgeInsetsGeometry.only(bottom: taskData.task.length - 1 == number?200: 0),
              child: TaskListTile(
                isCheck: taskData.task[number].isDone,
                taskText: taskData.task[number].name,
                checkBoxState: (bool? p1) {
                  // setState(() {
                  //   Provider.of<TaskData>(context).task[number].changeState();
                  // });
                },
              ),
            );
          },
          itemCount: taskData.task.length,
        );
      },

    );
  }
}
