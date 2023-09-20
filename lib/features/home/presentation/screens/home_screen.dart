import 'package:flutter/material.dart';
import 'package:self_growth_app/features/goals/presentation/screens/goals_list_screen.dart';
import 'package:self_growth_app/features/pets/presentation/screens/pets_list_screen.dart';
import 'package:self_growth_app/features/reminders/presentation/screens/reminders_list_screen.dart';
import 'package:self_growth_app/features/shoppings/presentation/screens/shoppings_list_screen.dart';

import '../../../tasks/presentation/screens/tasks_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient:  LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5],
            colors: [
              Color(0xff77EDCC), 
              Color(0xff4FC0DA), 
            ]
          ),
        ),
        child: PageView(
            physics: const AlwaysScrollableScrollPhysics(), //para efecto de que se puede seguir haciendo scroll
            scrollDirection: Axis.vertical,
            children: const [
              Page1(),
              Page2(),
            ],
          ),
      ));
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BackGround(), 
        MainContent()
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff4FC0DA),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.symmetric(vertical: 80),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            BtnTask(),
            BtnGoals(),
            BtnReminder(),
            BtnShopping(),
            BtnPets(),
            BtnPets(),
          ],
        ),
      ),
      );
  }
}

class BtnPets extends StatefulWidget {
  const BtnPets({
    super.key,
  });
  @override
  _btnPets createState() => _btnPets();
}

// ignore: camel_case_types
class _btnPets extends State<BtnPets> {

@override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const PetssListScreen()),
        ),
      },
      child: Container(
        decoration: BoxDecoration(
          color:const Color(0xff86EBC9),
          borderRadius: BorderRadius.circular(20),
          ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_business, size: 50),
            Text('Mascota', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

class BtnShopping extends StatefulWidget {
  const BtnShopping({
    super.key,
  });
  @override
  // ignore: library_private_types_in_public_api
  _btnShopping createState() => _btnShopping();
}

// ignore: camel_case_types
class _btnShopping extends State<BtnShopping> {
  @override
  Widget build(BuildContext context) {
    bool isHovered = false;
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ShoppingsListScreen())
        )
      },
      child: Container(
        decoration: BoxDecoration(color: isHovered ? Colors.red : Color(0xff86EBC9),
        borderRadius: BorderRadius.circular(20)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_business, size: 50),
            Text('Compras', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

class BtnGoals extends StatefulWidget {
  const BtnGoals({
    super.key,
  });
  @override
  _btnGoals createState() => _btnGoals();
}

class _btnGoals extends State<BtnGoals> {
  @override
  Widget build(BuildContext context) {
    bool isHovered = false;
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const GoalsListScreen())
        ),
      },
      child: Container(
        decoration: BoxDecoration(color: isHovered ? Colors.red : Color(0xff86EBC9),
        borderRadius: BorderRadius.circular(20)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.edit_calendar, size: 50),
            Text('Metas', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
 }

class BtnReminder extends StatefulWidget {
  const BtnReminder({super.key});
   @override
    _btnReminder createState()=> _btnReminder();
}

class _btnReminder extends State<BtnReminder> {

  @override
  Widget build(BuildContext context) {
    bool isHovered = false;
    return GestureDetector(
      onTap: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const RemindersListScreen())
        )
      },
      child: Container(
        decoration: BoxDecoration(color: isHovered ? Colors.red : Color(0xff86EBC9),
        borderRadius: BorderRadius.circular(20)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.notifications_active, size: 50),
            Text('Recordatorios', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

class BtnTask extends StatefulWidget {
  const BtnTask({super.key});

  @override
  _btnTask createState() => _btnTask();
}

class _btnTask extends State<BtnTask> {
 
 bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const TasksListScreen())
        );
      },
      child: Container(
        decoration: BoxDecoration(color: isHovered ? Colors.red : Color(0xff86EBC9),
        borderRadius: BorderRadius.circular(20)),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_task,size: 50),
            Text('Tareas',style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(
        fontSize: 45, fontWeight: FontWeight.bold, color: Colors.grey[700]);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Text(
            'Bienvenido!',
            style: textStyle,
          ),
          Text('Mateo', style: textStyle),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down_sharp,
              size: 90, color: Colors.grey[700])
        ],
      ),
    );
  }
}

class BackGround extends StatelessWidget {
  const BackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff4FC0DA),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}
