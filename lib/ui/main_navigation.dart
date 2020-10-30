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
          leading:IconButton(
            icon: CircleAvatar(
              backgroundImage: NetworkImage(photoUrl),
              backgroundColor: Colors.transparent, // 背景色
              radius: 16, // 表示したいサイズの半径を指定
            ),
            onPressed: /* タップした時の処理 */,
          );
        title: const Text('タスクアプリ'),
        ),
        drawer: Drawer(
          child: Column(children: [
            UserAccountsDrawerHeader(
              accountName: Text("User Name"),
              accountEmail: Text("User Email"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage("https://i.pravatar.cc/"),
              ),
            ),
          ]),
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
              icon: Icon(Icons.calendar_today_sharp),
              title: Text("カレンダー"),
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
