import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';

class TaskData extends ChangeNotifier {

  final List<Task> _task = [
    Task(name: "Buy girls"),
    Task(name: "Buy beers"),
    Task(name: "Taslim will buy me 3k coins"),
  ];
  
  UnmodifiableListView<Task> get task {
    return UnmodifiableListView(_task);
  }


  void addTaskToData (newValue) {
    _task.add(Task(name: newValue));
    notifyListeners();
  }

  void taskBoxChange (Task task) {
    task.changeState();
    notifyListeners();
  }

  void removeTaskData (Task task) {
    _task.remove(task);
    notifyListeners();
  }

}