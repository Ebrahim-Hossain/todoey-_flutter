import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';

class TaskData extends ChangeNotifier {

  List<Task> task = [
    Task(name: "Buy girls"),
    Task(name: "Buy beers"),
    Task(name: "Taslim will buy me 3k coins"),
  ];

  void addTaskToData (newValue) {
    task.add(Task(name: newValue));
    notifyListeners();
  }
}