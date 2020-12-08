import 'package:flutter/material.dart';
import 'package:help_daddy/model/task_data.dart';
import 'package:help_daddy/pallete.dart';
import 'package:provider/provider.dart';
import 'package:help_daddy/widgets/reusable_card.dart';
import 'package:help_daddy/widgets/reminder_card.dart';



class RemainderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0, bottom: 10.0),

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
            'What\'s up, Appa!',
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
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: ReusableCard(tasks: 6, title: 'Reminders')),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: ReusableCard(
                tasks: Provider.of<TaskData>(context).taskCount,
                title: 'To Dos',
              )),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
              padding:
                  EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
              decoration: BoxDecoration(
                color: Color(0xffE0FFFF),
                borderRadius: BorderRadius.all(Radius.circular(30)),

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: ReminderCard(
                          image: AssetImage('images/keys.png'),
                          label: 'Keys',
                        ),
                      ),
                      Expanded( 
                        child: ReminderCard(
                          image: AssetImage('images/face-mask.png'),
                          label: 'Mask',
                        ),
                      )
                      ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      Expanded( 
                        child: ReminderCard(
                          image: AssetImage('images/spectacles.png'),
                          label: 'Specs',
                        ),
                      ),
                      Expanded( 
                        child: ReminderCard(
                          image: AssetImage('images/medicine.png'),
                          label: 'Tablets',
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      Expanded( 
                        child: ReminderCard(
                          image: AssetImage('images/lunch.png'),
                          label: 'Lunch',
                        ),
                      ),
                      Expanded(
                        child: ReminderCard(
                          image: AssetImage('images/heart.png'),
                          label: 'A Smile',
                        ),
                      )
                    ],
                  ),

                ],
              )),
        ],
      ),
    );
  }
}


