import 'package:flutter/material.dart';
import 'package:self_growth_app/features/goals/presentation/screens/goals_list_screen.dart';
import 'package:self_growth_app/features/home/presentation/screens/home_screen.dart';
import 'package:self_growth_app/features/pets/presentation/screens/pets_list_screen.dart';
import 'package:self_growth_app/features/reminders/presentation/screens/reminders_list_screen.dart';
import 'package:self_growth_app/features/shoppings/presentation/screens/shoppings_list_screen.dart';
import 'package:self_growth_app/features/tasks/presentation/screens/tasks_list_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Self Growth',
      initialRoute: '/home_screen',
      routes: {
        '/home_screen': (context) => const HomeScreen(),
        '/tasks_list_screen': (context) => const TasksListScreen(),
        '/goals_list_screen': (context) => const GoalsListScreen(),
        '/reminders_list_screen': (context) => const RemindersListScreen(),
        '/shoppings_list_screen': (context) => const ShoppingsListScreen(),
        '/pets_list_screen': (context) => const PetssListScreen(),
      },
    );
  }
}
