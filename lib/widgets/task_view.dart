import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/task_list_tile.dart';

import '../model/task_data.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context,taskData, Widget? child) {
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (context, number) {
            final tasks = taskData.task[number];
            return Padding(
              padding: EdgeInsetsGeometry.only(bottom: taskData.task.length - 1 == number ? 200 : 0),
              child: TaskListTile(
                isCheck: tasks.isDone,
                taskText: tasks.name,
                checkBoxState: (bool? p1) {
                  taskData.taskBoxChange(tasks);
                },
                removeTask: () {

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
