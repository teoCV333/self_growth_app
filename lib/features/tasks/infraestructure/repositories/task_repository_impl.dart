
import 'package:self_growth_app/features/tasks/domain/datasources/tasks_datasource.dart';
import 'package:self_growth_app/features/tasks/domain/entities/task.entity.dart';
import 'package:self_growth_app/features/tasks/domain/repositories/tasks_repository.dart';

class TaskRepositoryImpl extends TasksRepository {

  final TasksDatasource datasource;
  TaskRepositoryImpl(this.datasource);

  @override
  Future<List<Task>> getTasks({int page = 1}) {
    return datasource.getTasks(page: page);
  } 

}