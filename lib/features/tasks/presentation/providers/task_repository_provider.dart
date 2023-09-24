

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:self_growth_app/features/tasks/infraestructure/datasources/mysql_datasource.dart';
import 'package:self_growth_app/features/tasks/infraestructure/repositories/task_repository_impl.dart';

final taskRepositoryProvider = Provider((ref) {
  
  return TaskRepositoryImpl( MySqlDatasource() ); 
});