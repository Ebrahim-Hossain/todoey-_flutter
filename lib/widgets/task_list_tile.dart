import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile({
    super.key,
    required this.isCheck,
    required this.taskText,
    required this.checkBoxState,
  });
  final bool isCheck;
  final String taskText;
  final Function(bool?) checkBoxState;

  // (checkBoxState) {
  // setState(() {
  // isCheck = checkBoxState!;
  // });
  // }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListTile(
      contentPadding: EdgeInsets.only(top: 10),
      title: Text(
        taskText,
        style: TextStyle(
          fontSize: 20,
          decoration: isCheck ? TextDecoration.lineThrough : null,
          decorationThickness: 2,
        ),
      ),
      trailing: Checkbox(value: isCheck, onChanged: checkBoxState),
    );
  }
}

class CheckBoxes extends StatelessWidget {
  const CheckBoxes({
    super.key,
    required this.isChecked,
    required this.changeCheckbox,
  });
  final bool? isChecked;
  final Function(bool?) changeCheckbox;
  @override
  Widget build(BuildContext context) {
    return Checkbox(value: isChecked, onChanged: changeCheckbox);
  }
}
