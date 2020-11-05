import 'package:flutter/material.dart';
import 'package:task_app/ui/home.dart';
import 'package:task_app/ui/parts/icon_button.dart';
import 'package:task_app/ui/parts/signin_first.dart';

class MainBottomNavigation extends StatefulWidget{
  @override
  _MainBottomNavigationState createState() => _MainBottomNavigationState();
}

class _MainBottomNavigationState extends State<MainBottomNavigation> {
  int _currentIndex = 0;

  List<Widget> _bodyList = [
    Home(),
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
              icon: Icon(Icons.home),
              title: Text("ホーム"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance),
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
