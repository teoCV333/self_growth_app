class TasksMySqlResponse {
    TasksMySqlResponse({
        required this.id,
        required this.title,
        required this.status,
    });
    final int id;
    final String title;
    final int status;
    

    factory TasksMySqlResponse.fromJson(Map<String, dynamic> json) => TasksMySqlResponse(
        id: json["id"],
        title: json["title"],
        status: json["status"]
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "status": status
    };
}
