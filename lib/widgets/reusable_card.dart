import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.tasks, this.title});
  final int tasks;
  final String title;
//  final Color sliderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.black),
      padding:
      EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '$tasks tasks',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent),
          ),
        ],
      ),
    );
  }
}