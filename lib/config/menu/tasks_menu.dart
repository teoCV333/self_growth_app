import 'package:flutter/material.dart';

class MenuTasks {
  final String title;
  final String link;
  final IconData icon;

  const MenuTasks({
    required this.title,
    required this.link,
    required this.icon,
  });
}

const menuTasksOptions = <MenuTasks>[
  MenuTasks(
    icon: Icons.pending_actions,
    link: "/pending",
    title: "Tareas Pendientes",
  ),
  MenuTasks(
    icon: Icons.add_task,
    link: "/tasks",
    title: "Tareas Completadas",
  )
];
