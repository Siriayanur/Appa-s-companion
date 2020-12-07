import 'package:flutter/material.dart';
import 'package:help_daddy/pallete.dart';

class RemainderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('images/father.png'),
            height: 80,
            width: 70,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'What\'s up,Dad!',
            style: TextStyle(
                color: titleColor,
                fontSize: 40.0,
                fontFamily: 'Indie',
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'CATEGORIES',
            style: TextStyle(
              color: Colors.grey.shade500,
              letterSpacing: 1.7,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 30.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: ReusableCard(tasks : 30,title: 'Reminders')),
              SizedBox(width: 10,),
              Expanded(child: ReusableCard(tasks : 10,title: 'To Dos',)),
            ],
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  ReusableCard({this.tasks,this.title});
  final int tasks;
  final String title;
//  final Color sliderColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black
      ),
      padding: EdgeInsets.only(
        top: 20.0,
        left: 10.0,
        right: 10.0,
        bottom: 10.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            '$tasks tasks',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent
            ),
          ),
        ],
      ),
    );
  }
}

