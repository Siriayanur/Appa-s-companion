import 'package:flutter/material.dart';
import 'package:help_daddy/pallete.dart';
import 'package:help_daddy/screens/todo_screen.dart';
import 'package:help_daddy/screens/reminder_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final tabs = [
    RemainderScreen(),
    TodoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: addTaskButtonColor,
        items: [
          BottomNavigationBarItem(
            title: Text(
              'Home',
              style: TextStyle(
                  color: (_currentIndex == 0 ? Colors.white : disabledIconBNB)),
            ),
            icon: Icon(
              Icons.home,
              color: (_currentIndex == 0 ? Colors.white : disabledIconBNB),
            ),
          ),
          BottomNavigationBarItem(
              title: Text(
                'ToDo',
                style: TextStyle(
                    color:
                        (_currentIndex == 1 ? Colors.white : disabledIconBNB)),
              ),
              icon: Icon(Icons.event_note,
                  color: (_currentIndex == 1 ? Colors.white : disabledIconBNB)))
        ],
        onTap: (indexValue) {
          setState(() {
            _currentIndex = indexValue;
          });
        },
      ),
    );
  }
}
