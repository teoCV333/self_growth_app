import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:self_growth_app/config/menu/tasks_menu.dart';

class TasksMenuScreen extends StatelessWidget {

  static const name = 'task_menu';

  const TasksMenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff4FC0DA),
        child: const MenuOptions(),
      ),
    );
  }
}

class MenuOptions extends StatelessWidget {
  const MenuOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),       
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, 
      ),
      itemCount: menuTasksOptions.length,   
      itemBuilder: (context, index) {
        final menuTasks = menuTasksOptions[index];
        return GestureDetector(
          onTap: () => {
            context.push(menuTasks.link)
          },
          child: Buttons(menuTasks: menuTasks),
        );
      },  
    );
  }
}
class Buttons extends StatelessWidget {
  const Buttons({
    super.key, required this.menuTasks,
  });

  final MenuTasks menuTasks; 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(30),
        color: const Color(0xff86EBC9) 
      ),
      margin: const EdgeInsets.fromLTRB(30, 10, 30, 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(menuTasks.icon, size: 80,),
          const SizedBox(height: 25,),
          Text(menuTasks.title, style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}