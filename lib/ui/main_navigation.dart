import 'package:flutter/material.dart';

class MainBottomNavigation extends StatelessWidget{

  final _tab = <Tab> [
    Tab( text:'ホーム', icon: Icon(Icons.home)),
    Tab( text:'カレンダー', icon: Icon(Icons.calendar_today)),
  ];

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.menu_sharp)),
          title: const Text('TabBar'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {

              },
            )
          ],
          bottom: TabBar(
            tabs: _tab,
          ),
        ),
        body: TabBarView(
            children: <Widget> [
              TabPage(title: 'ホーム', icon: Icons.home),
              TabPage(title: 'カレンダー', icon: Icons.calendar_today),
            ]
        ),
      ),
    );
  }
}

class TabPage extends StatelessWidget {
  final IconData icon;
  final String title;
  const TabPage({Key key, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Center(
      child:Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 64.0, color: textStyle.color),
          Text(title, style: textStyle),
        ],
      ),
    );
  }
}