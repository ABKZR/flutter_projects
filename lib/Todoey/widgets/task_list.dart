import 'package:flutter/material.dart';
import 'package:flutter_project/Todoey/model/task.dart';
import 'package:flutter_project/Todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(
      name: "milk",
    ),
    Task(
      name: "Bread",
    ),
    Task(name: "Eggs", isDone: true)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
          taskTitle: tasks[index].name, 
          isChecked: tasks[index].isDone,
          checkboxCallback: (val){
        setState(() {
          tasks[index].toggleDone();
        });
      });
    },
    itemCount: tasks.length,
    );
  }
}
