import 'package:flutter/foundation.dart';
import './task.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: "milk"),
    Task(name: "Bread"),
    Task(name: "Eggs")
  ];
  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}