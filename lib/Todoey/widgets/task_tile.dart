import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({required this.taskTitle,required this.isChecked,required this.checkboxCallback});

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
      style: TextStyle(decoration: isChecked? TextDecoration.lineThrough: null),),
      trailing: Checkbox(
      value: isChecked,
      activeColor: Colors.lightBlueAccent,
      onChanged: (val){
        checkboxCallback(val);
      },
    ),
    );
  }
}

