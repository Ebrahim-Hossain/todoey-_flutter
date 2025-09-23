import 'package:flutter/material.dart';
import '../model/task.dart';
import '../widgets/task_view.dart';
import 'add_task_screen.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> task = [
    Task(name: "Buy girls"),
    Task(name: "Buy beers"),
    Task(name: "Taslim will buy me 3k coins"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(addText:
                (newText) {
              setState(() {
                task.add(Task(name: newText));
              });
            },),
          );
        },
        child: Icon(Icons.add, color: Colors.white, size: 35),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, right: 30, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Icon(
                    Icons.menu,
                    size: 35,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Todoey',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  '${task.length} Tasks',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: TaskView(task: task),
            ),
          ),
        ],
      ),
    );
  }
}
