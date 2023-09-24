class TaskMySqlResponse {
  TaskMySqlResponse({
    required this.title,
    required this.status,
    required this.id,
  });
  final String title;
  final int status;
  final int id;

  factory TaskMySqlResponse.fromJson(Map<String, dynamic> json) => TaskMySqlResponse(
    id: json["id"],
    title: json["title"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "status": status,
      };
}