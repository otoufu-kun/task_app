import 'package:flutter/material.dart';
import 'package:task_app/ui/task_page.dart';
import 'package:task_app/ui/parts/icon_button.dart';
import 'package:task_app/ui/parts/profile.dart';

class MainBottomNavigation extends StatefulWidget{
  @override
  _MainBottomNavigationState createState() => _MainBottomNavigationState();
}

class _MainBottomNavigationState extends State<MainBottomNavigation> {
  int _currentIndex = 0;

  List<Widget> _bodyList = [
    TaskPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading:ProfileIconButton(),
          title: const Text('タスクアプリ'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTap,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.note),
              title: Text("タスク"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              title: Text("プロフィール"),
            ),
          ],
        ),
        body: _bodyList[_currentIndex],
      );
    }

    _onTap(int i) {
      setState(() {
        _currentIndex = i;
      });
    }
}
