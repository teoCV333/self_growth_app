import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class TaskPending extends StatefulWidget {
  const TaskPending({super.key});

  @override
  State<TaskPending> createState() => _TaskPendingState();
}

class _TaskPendingState extends State<TaskPending> {
  final _tasksPendingStream = FirebaseFirestore.instance.collection('pending_tasks').snapshots();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tareas Pendientes"),
      ),
      body: StreamBuilder(
        stream: _tasksPendingStream,
        builder: ((context, snapshot) {
          if(snapshot.hasError) {
            return const Text("Connection failed");
          }
          if(snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading...");
          }
          var docs = snapshot.data!.docs;
          return Text('${docs.length}');
        }),
      ),
    );
  }
}