import 'package:flutter/material.dart';
import 'package:help_daddy/pallete.dart';
import 'package:add_2_calendar/add_2_calendar.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function onCheckBoxChanged;
  final Function longPressCallback;


  TaskTile(
      {this.taskTitle,
      this.isChecked,
      this.onCheckBoxChanged,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {

    return ListTile(
      onLongPress: longPressCallback,
      trailing: GestureDetector(
        onTap: () {
          DateTime now = DateTime.now();
          var offset = Duration(seconds: now.timeZoneOffset.inSeconds);
          var offsethr = offset.inHours;
          var offsetmin = (offset.inMinutes) % 60;
          String offsetStr =
              'GMT+' + offsethr.toString() + ':' + offsetmin.toString();

          Event event = new Event(
              title: taskTitle,
              startDate: now,
              endDate: now,
              timeZone: offsetStr);
          Add2Calendar.addEvent2Cal(event);
        },
        child: Icon(Icons.calendar_today),
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
