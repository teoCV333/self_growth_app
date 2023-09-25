import 'package:self_growth_app/features/tasks/infraestructure/models/mysql/tasks_mysql_response.dart';

class MySqlResponse {
  MySqlResponse({
    required this.totalItems,
    required this.results,
    required this.page,
  });
  final List<TasksMySqlResponse> results;
  final int totalItems;
  final int page;

  factory MySqlResponse.fromJson(Map<String, dynamic> json) => MySqlResponse(
    totalItems: json["totalItems"],
    results: List<TasksMySqlResponse>.from(json["tasks"].map((x) => TasksMySqlResponse.fromJson(x))),
    page: json["currentPage"]
  );

  Map<String, dynamic> toJson() => {
    "page": page,
    "totalItems": totalItems,
    "results": List<dynamic>.from(results.map((x) => x.toJson()))
  };
}