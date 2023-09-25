import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:self_growth_app/config/menu/tasks_menu.dart';
import 'package:self_growth_app/features/tasks/presentation/screens/menu/tasks_info_widget.dart';

class TasksMenuScreen extends StatelessWidget {

  static const name = 'task_menu';

  const TasksMenuScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.maxFinite,
        color: const Color(0xff4FC0DA),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: const Column(
            children: <Widget>[
              SizedBox(height: 66),
              Expanded(flex: 1, child:  TaskInfoWidget()),
              Expanded(flex: 5, child: MenuOptions())
            ],
          ),
        ),
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin: const EdgeInsets.fromLTRB(10,10,10,0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),       
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.3,
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
      ),
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
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(menuTasks.icon, size: 70,),
          const SizedBox(height: 10),
          Text(menuTasks.title, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}