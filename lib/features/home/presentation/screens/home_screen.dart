import 'package:flutter/material.dart';

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
            physics: const BouncingScrollPhysics(), //para efecto de que se puede seguir haciendo scroll
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
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 77, 172, 250),
              shape: const StadiumBorder()),
          onPressed: () => {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Bienvenido', style: TextStyle(color: Colors.grey[600], fontSize: 30))
          ),
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
            '11°',
            style: textStyle,
          ),
          Text('Miercoles', style: textStyle),
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
