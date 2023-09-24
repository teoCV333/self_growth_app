import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_growth_app/features/tasks/domain/entities/task.entity.dart';
import 'package:self_growth_app/features/tasks/presentation/providers/task_repository_provider.dart';

final tasksProvider = StateNotifierProvider<TasksNotifier, List<Task>>((ref) {

  final fetchMoreTasks = ref.watch(taskRepositoryProvider).getTasks;

  return TasksNotifier( 
    fetchMoreTasks: fetchMoreTasks
  );
});

typedef TaskCallback = Future<List<Task>> Function({ int page });

class TasksNotifier extends StateNotifier<List<Task>> {

  int currentPage = 0;
  TaskCallback fetchMoreTasks; 

  TasksNotifier({
    required this.fetchMoreTasks,
  }): super([]);

  Future<void> loadNextPage() async { 
    currentPage++;
    final List<Task> tasks = await fetchMoreTasks(page: currentPage);
    state = [...tasks];
  }

}