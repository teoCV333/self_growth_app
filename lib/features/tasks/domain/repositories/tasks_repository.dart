import '../entities/task.entity.dart';

abstract class TasksRepository {

  Future<List<Task>> getTasks({int page = 1});

}
