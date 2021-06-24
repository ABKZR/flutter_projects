import 'package:flutter/material.dart';
import 'package:flutter_project/Todoey/model/task_data.dart';
import 'package:flutter_project/Todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child){
      return ListView.builder(itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: taskData.tasks[index].name, 
            isChecked: taskData.tasks[index].isDone,
            checkboxCallback: (val){
        });
      },
      itemCount: taskData.tasks.length,
      );
    }
      
    );
  }
}
