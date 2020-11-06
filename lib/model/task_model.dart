import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task_app/ui/parts/task.dart';

class TaskModel extends ChangeNotifier{
  List<Task> taskList = [];

  Future getTaskList() async {
    final snapshot = await FirebaseFirestore.instance.collection('taskList').get();
    final docs = snapshot.docs;
    final taskList = docs.map((doc) => Task(doc)).toList();
    this.taskList = taskList;
    notifyListeners();
  }
}