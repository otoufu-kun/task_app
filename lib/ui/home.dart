import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: const Text("ホーム"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}