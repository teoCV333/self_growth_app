import 'package:self_growth_app/features/tasks/domain/entities/task.entity.dart';
import 'package:self_growth_app/features/tasks/infraestructure/models/mysql/task_mysql_response.dart';

class TaskMapper {

  static Task mySqlToEntity( TaskMySqlResponse task ) => Task(
    id: task.id,
    status: task.status,
    title: task.title
  );
}