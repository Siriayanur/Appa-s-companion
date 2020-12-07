import 'package:flutter/material.dart';
import 'package:help_daddy/model/task_data.dart';
import 'package:provider/provider.dart';
import 'package:help_daddy/pallete.dart';
import 'add_task_screen.dart';
import 'package:help_daddy/widgets/task_list.dart';


class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB0C4DE),
      floatingActionButton: FloatingActionButton(
        backgroundColor: addTaskButtonColor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTaskScreen(),
                ),
              ));
        },
      ),
      body: Container(
        padding: EdgeInsets.only(
            top: 60.0,
            left: 25.0,
            bottom: 50.0,
            right: 20.0
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.note,
//                    color: Color(0xff778899),
                    color:Colors.white60 ,
                    size: 40,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Note it !',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: addTaskButtonColor,
                      fontSize: 40,
                      fontFamily: 'Indie'
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Text('${Provider.of<TaskData>(context).taskCount}'),
            Container(child: Expanded(child: TaskList())),
          ],
        ),
      ),
    );
  }
}


