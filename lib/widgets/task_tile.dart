import 'package:flutter/material.dart';
import 'package:help_daddy/pallete.dart';
import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:help_daddy/screens/calender_event_screen.dart';

class TaskTile extends StatelessWidget {

  final String taskTitle;
  final bool isChecked;
  final Function onCheckBoxChanged;
  final Function longPressCallback;
//  final Function onCalendarClick;

  TaskTile(
      {
        this.taskTitle,
        this.isChecked,
        this.onCheckBoxChanged,
        this.longPressCallback
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      trailing: GestureDetector(
          onTap: (){

          },
        child: Icon(
        Icons.calendar_today
      ),
    ),
      leading: Checkbox(
        value: isChecked,
        activeColor: addTaskButtonColor,
        onChanged: onCheckBoxChanged,
      ),
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
    );
  }
}
