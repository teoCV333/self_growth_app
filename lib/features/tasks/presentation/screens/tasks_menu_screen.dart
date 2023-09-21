import 'package:flutter/material.dart';

class TasksMenuScreen extends StatelessWidget {

  static const name = 'task_menu';

  const TasksMenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff4FC0DA),
        child: Stack(
          children: [
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, crossAxisSpacing: 10, mainAxisSpacing: 10),
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                NewTask()
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NewTask extends StatelessWidget {
  const NewTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(20),
        color: const Color(0xff86EBC9) 
      ),
      margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 30),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_task, size: 80,),
          SizedBox(height: 25,),
          Text('Agregar una nueva tarea', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}