import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  void Function() longPressCallBack;
  void Function(bool?) checkBoxCallBack;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallBack,
      required this.longPressCallBack});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallBack,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          onChanged: checkBoxCallBack,
          value: isChecked,
        ));
  }
}
