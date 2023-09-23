import 'package:go_router/go_router.dart';
import 'package:self_growth_app/features/goals/presentation/screens/goals_menu_screen.dart';
import 'package:self_growth_app/features/home/presentation/screens/home_screen.dart';
import 'package:self_growth_app/features/pets/presentation/screens/pets_list_screen.dart';
import 'package:self_growth_app/features/reminders/presentation/screens/reminders_menu_screen.dart';
import 'package:self_growth_app/features/shoppings/presentation/screens/shoppings_menu_screen.dart';
import 'package:self_growth_app/features/tasks/presentation/screens/tasks_menu_screen.dart';
import 'package:self_growth_app/features/tasks/presentation/screens/tasks_pending_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      name: HomeScreen.name,
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: TasksMenuScreen.name,
      path: '/tasks',
      builder: (context, state) => const TasksMenuScreen(),
    ),
    GoRoute(
      name: GoalsMenuScreen.name,
      path: '/goals',
      builder: (context, state) => const GoalsMenuScreen(),
    ),
    GoRoute(
      name: RemindersMenuScreen.name,
      path: '/reminders',
      builder: (context, state) => const RemindersMenuScreen(),
    ),
    GoRoute(
      name: ShoppingsMenuScreen.name,
      path: '/shoppings',
      builder: (context, state) => const ShoppingsMenuScreen(),
    ),
    GoRoute(
      name: PetsMenuScreen.name,
      path: '/pets',
      builder: (context, state) => const PetsMenuScreen(),
    ),
    GoRoute(
      name: TasksPendingScreen.name,
      path: '/pending',
      builder: (context, state) => const TasksPendingScreen(),
    ),
  ],
);
