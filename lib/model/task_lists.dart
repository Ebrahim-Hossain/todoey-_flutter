import 'package:todoey_flutter/model/task.dart';

class TaskLists {

  List<Task> task = [
    Task(name: "Buy girls"),
    Task(name: "Buy beers"),
    Task(name: "Taslim will buy me 3k coins"),
  ];

  void addTask (taskText) {
    var text = Task(name: taskText);
    task.add(text);
  }
}
