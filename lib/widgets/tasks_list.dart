import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            isChecked: task.isDone,
            taskTitle: task.name,
            longPressCallBack: () {
              taskData.removeTask(task);
            },
            checkBoxCallBack: (value) {
              taskData.updateTask(task);
            },
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
