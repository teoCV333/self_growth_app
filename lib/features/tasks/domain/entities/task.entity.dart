
class Task {
  final int id; 
  final String title; 
  int status; 
  
  Task({
    required this.id, 
    required this.title, 
    this.status = 0,
  });
}