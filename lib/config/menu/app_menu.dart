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

const menuHomeOptions = <MenuHome>[
  MenuHome(
    icon: Icons.add_task,
    link: "/tasks",
    title: "Tareas",
  ),
  MenuHome(
    icon: Icons.edit_calendar,
    link: "/goals",
    title: "Metas",
  ),
  MenuHome(
    icon: Icons.notifications_active,
    link: "/reminders",
    title: "Recordatorios",
  ),
  MenuHome(
    icon: Icons.add_business,
    link: "/shoppings",
    title: "Compras",
  ),
  MenuHome(
    icon: Icons.add_business,
    link: "/petss",
    title: "Mascotas",
  ),
  MenuHome(
    icon: Icons.add_business,
    link: "/pets_list_screen",
    title: "Mascotas",
  ),
];
