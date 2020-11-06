import 'package:cloud_firestore/cloud_firestore.dart';


class Task {
  Task(DocumentSnapshot doc) {
    this.title = doc.data()['title'];
    this.description = doc.data()['description'];
    final Timestamp timestamp = doc.data()['createdAt'];
    this.createdAt = timestamp.toDate();
  }

  String title;
  String description;
  DateTime createdAt;
}
