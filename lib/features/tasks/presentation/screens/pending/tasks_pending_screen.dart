import 'package:self_growth_app/features/tasks/presentation/providers/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_growth_app/features/tasks/presentation/screens/pending/filters_widget.dart';

class TasksPendingScreen extends StatelessWidget {

  static const name = 'tasks-pending-screen';

  const TasksPendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tareas Pendientes'),),
      body: Container( 
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xff4FC0DA),
        child: const Column(
          children: <Widget> [
            Filters(),
            _TasksPendingView()
          ]
          )
        ),
    );
  }
}
class _TasksPendingView extends ConsumerStatefulWidget {
  const _TasksPendingView();
  @override
  _TasksPendingViewState createState() => _TasksPendingViewState();
}

class _TasksPendingViewState extends ConsumerState<_TasksPendingView> {
  @override
  void initState() {
    super.initState();

    ref.read(tasksProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final tasks = ref.watch(tasksProvider);

    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff86EBC9),
          ),
          child: ListTile(
            title: Text(
              task.title,
              style: const TextStyle(color: Colors.black),
            ),
            leading: const Icon(Icons.check_box, color: Colors.black),
          ),
        );
      },
    );
  }
}