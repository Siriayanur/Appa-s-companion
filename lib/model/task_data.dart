import 'package:flutter/foundation.dart';
import 'package:help_daddy/model/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
    Task(name: 'Check Water'),
    Task(name: 'Update student remarks'),
    Task(name: 'Take vehicle to service'),

  ];

  void addTask(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(
      task
    );
    notifyListeners();
  }
}