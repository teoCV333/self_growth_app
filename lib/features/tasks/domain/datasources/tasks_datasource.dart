import '../entities/task.entity.dart';

abstract class TasksDatasource {

  Future<List<Task>> getTasks({int page = 1});

} 