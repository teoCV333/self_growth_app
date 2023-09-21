import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:self_growth_app/config/menu/app_menu.dart';
class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

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
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: menuHomeOptions.length,
      itemBuilder: (context, index) {
        final menuHome = menuHomeOptions[index];
       return GestureDetector(
          onTap: () => {
            context.push(menuHome.link)
          },
          child: Buttons(menuHome: menuHome),
        );
      },
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
    required this.menuHome,
  });

  final MenuHome menuHome;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:const Color(0xff86EBC9),
        borderRadius: BorderRadius.circular(20),
        ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(menuHome.icon, size: 50),
          Text(menuHome.title, style: const TextStyle(fontSize: 20)),
        ],
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
