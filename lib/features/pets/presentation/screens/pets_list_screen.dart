import 'package:flutter/material.dart';

class PetssListScreen extends StatelessWidget {
  const PetssListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff4FC0DA),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 410),
            const Text(
              'Mascotas',
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}