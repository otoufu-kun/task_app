import 'package:flutter/material.dart';
import 'package:task_app/ui/main_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'タスクアプリ',
      home: MainBottomNavigation()
    );
  }
}