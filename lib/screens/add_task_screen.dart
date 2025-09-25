import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/main.dart';

import '../model/task_data.dart';

class AddTaskScreen extends StatelessWidget {
   const AddTaskScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    String? newTextTitle;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 40,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextField(
            onChanged: (newText) {
              newTextTitle = newText;
            },
            textAlign: TextAlign.center,
            autofocus: true,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.lightBlueAccent, width: 4), // when focused
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.lightBlueAccent),
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              ),
            ),
            onPressed: () {
              Provider.of<TaskData>(context,listen: false).addTaskToData(newTextTitle);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
