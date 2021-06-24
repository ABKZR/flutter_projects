import 'package:flutter/material.dart';
import 'package:flutter_project/Todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
      TaskTile(),
      TaskTile(),
      TaskTile()
    ],
    );
  }
}
