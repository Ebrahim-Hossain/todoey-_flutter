import 'package:flutter/material.dart';

class TaskListTile extends StatefulWidget {
  const TaskListTile({super.key});

  @override
  State<TaskListTile> createState() => _TaskListTileState();
}

class _TaskListTileState extends State<TaskListTile> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 30),
      title: Text('This is task.', style: TextStyle(
        fontSize: 20,
        decoration: isCheck ? TextDecoration.lineThrough  : null,)
      ),
      trailing: CheckBoxes(
        isChecked: isCheck,
        changeCheckbox: (newValue) {
          setState(() {
            isCheck = newValue;
          });

        },
      ),
    );
  }
}

class CheckBoxes extends StatelessWidget {
  const CheckBoxes({super.key,required this.isChecked, required this.changeCheckbox});
  final bool? isChecked;
  final Function changeCheckbox;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: (newValue) {
        changeCheckbox(newValue);
        }
    );
  }
}

