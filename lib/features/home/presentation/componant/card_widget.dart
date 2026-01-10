import 'package:fitrah/features/home/data/models/task_model.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.task,
    required this.onToggleCompleted,
  });
  final TaskModel task;
  final Function() onToggleCompleted;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(child: Icon(Icons.check_circle_outline)),
        title: Text(task.title),
        subtitle: Text(task.subTitle),
        trailing: Checkbox(
          value: task.isCompleted,
          onChanged: (_) => onToggleCompleted(),
        ),
      ),
    );
  }
}
