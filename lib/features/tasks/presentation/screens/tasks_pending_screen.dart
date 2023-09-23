import 'package:flutter/material.dart';


class TaskPending extends StatefulWidget {
  const TaskPending({super.key});

  @override
  State<TaskPending> createState() => _TaskPendingState();
}

class _TaskPendingState extends State<TaskPending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tareas Pendientes"),
      ),
      body: Container(),
    );
  }
}