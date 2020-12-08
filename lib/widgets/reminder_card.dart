import 'package:flutter/material.dart';
import 'package:help_daddy/model/reminder.dart';

class ReminderCard extends StatelessWidget {

  ReminderCard({this.label,this.image});
  final ImageProvider image;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: image,
            radius: 22.0,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            label,
            style: TextStyle(
                color: Color(0xff191970),
                fontSize: 22,
                fontFamily: 'Josefin',
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
