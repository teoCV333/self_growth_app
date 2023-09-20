import 'package:flutter/material.dart';

class MenuHome {
  final String title;
  final String link;
  final IconData icon;

  const MenuHome({
    required this.title,
    required this.link,
    required this.icon,
  });

}

const MenuHomeOptions = <MenuHome>[

  MenuHome(
    icon: Icons.add_task,
    link: "/tasks_list_screen",
    title: "Tareas",
  ),

  MenuHome(
    icon: Icons.edit_calendar,
    link: "/goals_list_screen",
    title: "Metas",
  ),

  MenuHome(
    icon: Icons.notifications_active,
    link: "/reminders_list_screen",
    title: "Recordatorios",
  ),

   MenuHome(
    icon: Icons.add_business,
    link: "/shoppings_list_screen",
    title: "Compras",
  ),

   MenuHome(
    icon: Icons.add_business,
    link: "/pets_list_screen",
    title: "Mascotas",
  ),

];