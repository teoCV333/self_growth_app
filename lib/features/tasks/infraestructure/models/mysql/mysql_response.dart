
import 'package:self_growth_app/features/tasks/infraestructure/models/mysql/task_mysql_response.dart';

class MySqlResponse {
    MySqlResponse({
        required this.results,
    });

    final List<TaskMySqlResponse> results;
    

    factory MySqlResponse.fromJson(Map<String, dynamic> json) => MySqlResponse(
        results: List<TaskMySqlResponse>.from(json["tasks"].map((x) => TaskMySqlResponse.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "tasks": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}
