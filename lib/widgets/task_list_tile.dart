import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({super.key,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 30),
      title: Text(
        'This is task.',
        style: TextStyle(fontSize: 20),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (bool? value) {},
      ),
    );
  }
}