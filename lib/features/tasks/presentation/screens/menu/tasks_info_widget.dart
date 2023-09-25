import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_growth_app/features/tasks/presentation/providers/task_provider.dart';

class TaskInfoWidget extends StatelessWidget {
  
  const TaskInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return _TasksInfoView();
  }
}

class _TasksInfoView extends ConsumerStatefulWidget {
  
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TasksInfoViewState();
}

class _TasksInfoViewState extends ConsumerState<_TasksInfoView> {
  
  @override
  void initState() {
    super.initState();
    ref.read(tasksProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final tasks = ref.watch(tasksProvider);
    final tasksCount = tasks.length;
    final tasksRemaining = tasks.map((e) => e.status == 0).length;
    return Container(
      margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      child: Row(
        children: [
          // Total Tasks
          Expanded(
            flex: 1,
            child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff86EBC9),
                    borderRadius: BorderRadius.circular(10)),
                child:  Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text("$tasksCount",
                              style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: FittedBox(
                          child: Text("Total de tareas",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    )
                  ],
                )),
          ),
          const SizedBox(width: 20),
          // Remaining
          Expanded(
            flex: 1,
            child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff86EBC9),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text("$tasksRemaining",
                              style: const TextStyle(
                                  fontSize: 28,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: FittedBox(
                          child: Text("Tareas pendientes",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600
                                )
                              ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }

}