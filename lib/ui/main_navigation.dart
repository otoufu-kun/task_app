import 'package:flutter/material.dart';
import 'package:task_app/ui/home.dart';
import 'package:task_app/ui/setting.dart';

class MainBottomNavigation extends StatefulWidget{
  @override
  _MainBottomNavigationState createState() => _MainBottomNavigationState();
}

class _MainBottomNavigationState extends State<MainBottomNavigation> {
  int _currentIndex = 0;

  List<Widget> _bodyList = [
    Home(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: const Text('タスクアプリ'),
        ),
        drawer: Drawer(
          child: Center(child: Text("Drawer"),)
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
              icon: Icon(Icons.settings),
              title: Text("設定"),
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
