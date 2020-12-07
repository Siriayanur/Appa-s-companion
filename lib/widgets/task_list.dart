import 'package:help_daddy/model/task_data.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:help_daddy/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //tell the Consumer the type of data it is consuming
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              onCheckBoxChanged: (bool currentCheckboxState) {
                taskData.updateTask(task);
              },
            );
          },
          //necessary argument to give as dynamically
          // the listView builder will construct the
          // list based on the index, which comes from
          // this taskCount(length) of the tasks list, what is the currentIndex
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
