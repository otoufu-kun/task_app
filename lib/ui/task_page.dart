import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/model/task_model.dart';

void Load() {
  runApp(TaskPage());
}

class TaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskModel>(
      create: (_) => TaskModel()..getTaskList(),
      child: Scaffold(
        body: Consumer<TaskModel>(builder: (context, model, child) {
          final taskList = model.taskList;
          return ListView(
            children: taskList
                .map(
                  (task) => ListTile(
                      title: Text(task.title),
                  ),
            ).toList(),
          );
        }),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(
              context: context,
              barrierDismissible: false, // dialog is dismissible with a tap on the barrier
              builder: (BuildContext context) => new AlertDialog(
                title: new Text("タイトル"),
                content: new Text("本文"),
                // ボタンの配置
                actions: <Widget>[
                  new FlatButton(
                      child: const Text('キャンセル'),
                      onPressed: () => Navigator.pop(context),
                      ),
                  new FlatButton(
                      child: const Text('OK'),
                      onPressed: () => Navigator.pop(context),
                      )
                ],
              ),
            );
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}