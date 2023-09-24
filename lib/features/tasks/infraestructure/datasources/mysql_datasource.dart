
import 'package:dio/dio.dart';
import 'package:self_growth_app/features/tasks/domain/datasources/tasks_datasource.dart';
import 'package:self_growth_app/features/tasks/domain/entities/task.entity.dart';
import 'package:self_growth_app/features/tasks/infraestructure/mappers/task_mapper.dart';
import 'package:self_growth_app/features/tasks/infraestructure/models/mysql/mysql_response.dart';

class MySqlDatasource extends TasksDatasource {
  final dio = Dio(BaseOptions(baseUrl: 'http://192.168.1.54:3000/api/v1'));

  @override 
  Future<List<Task>> getTasks({int page = 1}) async {

    final response = await dio.get('/task');
    final response2 = response.data;
    final mysqlResponse = MySqlResponse.fromJson(response2);

    final List<Task> tasks = mysqlResponse.results.map((task) => TaskMapper.mySqlToEntity(task)).toList();
    return tasks;
  }
}